import 'package:flutter/material.dart';

// Screen to perform basic arithmetic operations.
class ArithmeticViewScreen extends StatefulWidget {
  @override
  _ArithmeticViewScreenState createState() => _ArithmeticViewScreenState();
}

class _ArithmeticViewScreenState extends State<ArithmeticViewScreen> {
  final TextEditingController num1Controller = TextEditingController(); // Controller for the first number input field.
  final TextEditingController num2Controller = TextEditingController(); // Controller for the second number input field.
  double result = 0; // Variable to store the result of the operation.

  // Function to perform arithmetic operations.
  void performOperation(String operation) {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;

    setState(() {
      switch (operation) {
        case '+':
          result = num1 + num2;
          break;
        case '-':
          result = num1 - num2;
          break;
        case '*':
          result = num1 * num2;
          break;
        case '/':
          result = num2 != 0 ? num1 / num2 : 0; // Avoid division by zero.
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arithmetic View')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input field for the first number.
            TextField(
              controller: num1Controller,
              decoration: InputDecoration(labelText: 'Number 1'),
              keyboardType: TextInputType.number,
            ),
            // Input field for the second number.
            TextField(
              controller: num2Controller,
              decoration: InputDecoration(labelText: 'Number 2'),
              keyboardType: TextInputType.number,
            ),
            // Row of buttons for different operations.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () => performOperation('+'), child: Text('+')),
                ElevatedButton(onPressed: () => performOperation('-'), child: Text('-')),
                ElevatedButton(onPressed: () => performOperation('*'), child: Text('*')),
                ElevatedButton(onPressed: () => performOperation('/'), child: Text('/')),
              ],
            ),
            SizedBox(height: 20),
            // Displays the result of the operation.
            Text('Result: ${result.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

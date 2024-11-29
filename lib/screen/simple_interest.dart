import 'package:flutter/material.dart';

// Screen to calculate simple interest.
class SimpleInterestScreen extends StatefulWidget {
  @override
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  // Controllers for input fields.
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  double result = 0; // Variable to store the calculated simple interest.

  // Function to calculate simple interest.
  void calculateInterest() {
    double principal = double.tryParse(principalController.text) ?? 0;
    double rate = double.tryParse(rateController.text) ?? 0;
    double time = double.tryParse(timeController.text) ?? 0;

    setState(() {
      result = (principal * rate * time) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input field for principal amount.
            TextField(
              controller: principalController,
              decoration: InputDecoration(labelText: 'Principal'),
              keyboardType: TextInputType.number,
            ),
            // Input field for rate of interest.
            TextField(
              controller: rateController,
              decoration: InputDecoration(labelText: 'Rate (%)'),
              keyboardType: TextInputType.number,
            ),
            // Input field for time period.
            TextField(
              controller: timeController,
              decoration: InputDecoration(labelText: 'Time (years)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Button to calculate simple interest.
            ElevatedButton(
              onPressed: calculateInterest,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            // Displays the calculated simple interest.
            Text('Simple Interest: \$${result.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  @override
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  double result = 0;

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
            TextField(
              controller: principalController,
              decoration: InputDecoration(labelText: 'Principal'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: rateController,
              decoration: InputDecoration(labelText: 'Rate (%)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: timeController,
              decoration: InputDecoration(labelText: 'Time (years)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateInterest,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text('Simple Interest: \$${result.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

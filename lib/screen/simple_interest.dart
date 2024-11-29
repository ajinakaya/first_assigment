import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  @override
  _SimpleInterestScreenState createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  final _formKey = GlobalKey<FormState>(); // Key for the form.
  final TextEditingController principalController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  double? _result;

  void _calculateInterest() {
    if (_formKey.currentState!.validate()) {
      // Parse input values.
      double principal = double.parse(principalController.text);
      double rate = double.parse(rateController.text);
      double time = double.parse(timeController.text);

      // Calculate simple interest.
      setState(() {
        _result = (principal * rate * time) / 100;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Interest')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: principalController,
                decoration: InputDecoration(labelText: 'Principal'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the principal amount';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: rateController,
                decoration: InputDecoration(labelText: 'Rate (%)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the rate of interest';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: timeController,
                decoration: InputDecoration(labelText: 'Time (Years)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the time period';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateInterest,
                child: Text('Calculate Interest'),
              ),
              SizedBox(height: 20),
              if (_result != null)
                Text(
                  'Simple Interest: $_result',
                  style: TextStyle(fontSize: 18),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

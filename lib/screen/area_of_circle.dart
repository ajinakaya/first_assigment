import 'package:flutter/material.dart';
import 'dart:math';

class AreaOfCircleScreen extends StatefulWidget {
  @override
  _AreaOfCircleScreenState createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final _formKey = GlobalKey<FormState>(); // GlobalKey to manage the form state.
  final TextEditingController radiusController = TextEditingController(); // Controller for radius input.
  double? _area; // Variable to store the calculated area.

  // Function to calculate the area of the circle.
  void _calculateArea() {
    if (_formKey.currentState!.validate()) { // Validating form inputs.
      double radius = double.parse(radiusController.text); // Parsing the radius input.
      setState(() {
        _area = pi * radius * radius; // Area formula: π * r².
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of Circle')), // AppBar with title.
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the form.
        child: Form(
          key: _formKey, // Form key for validation.
          child: Column(
            children: [
              // TextFormField for radius input.
              TextFormField(
                controller: radiusController, // Controller to get value.
                decoration: InputDecoration(labelText: 'Radius'), // Label for the input.
                keyboardType: TextInputType.number, // Input type for numbers.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the radius'; // Validation message.
                  }
                  return null; // Return null if input is valid.
                },
              ),
              SizedBox(height: 20),
              // Button to calculate the area.
              ElevatedButton(
                onPressed: _calculateArea, // On press, calculate the area.
                child: Text('Calculate Area'),
              ),
              SizedBox(height: 20),
              // Display the calculated area if it's not null.
              if (_area != null)
                Text(
                  'Area: $_area', // Display the area result.
                  style: TextStyle(fontSize: 18),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

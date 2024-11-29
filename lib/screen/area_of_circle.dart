import 'package:flutter/material.dart';

// Screen to calculate the area of a circle.
class AreaOfCircleScreen extends StatefulWidget {
  @override
  _AreaOfCircleScreenState createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController radiusController = TextEditingController(); // Controller for the radius input field.
  double result = 0; // Variable to store the calculated area.

  // Function to calculate the area of a circle.
  void calculateArea() {
    double radius = double.tryParse(radiusController.text) ?? 0;
    setState(() {
      result = 3.14159 * radius * radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Area of Circle')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input field for the radius.
            TextField(
              controller: radiusController,
              decoration: InputDecoration(labelText: 'Radius'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            // Button to calculate the area.
            ElevatedButton(
              onPressed: calculateArea,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            // Displays the calculated area.
            Text('Area: ${result.toStringAsFixed(2)} sq. units'),
          ],
        ),
      ),
    );
  }
}

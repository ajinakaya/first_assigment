import 'package:flutter/material.dart';
import 'simple_interest.dart'; // Importing the Simple Interest screen.
import 'area_of_circle.dart'; // Importing the Area of Circle screen.
import 'arithmetic_view.dart'; // Importing the Arithmetic View screen.

// Dashboard screen that provides navigation to different views.
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')), // App bar with the title "Dashboard".
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center the buttons vertically.
          children: [
            // Button to navigate to the Simple Interest screen.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleInterestScreen()),
                );
              },
              child: Text('Simple Interest'),
            ),
            SizedBox(height: 20), // Space between buttons.

            // Button to navigate to the Area of Circle screen.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AreaOfCircleScreen()),
                );
              },
              child: Text('Area of Circle'),
            ),
            SizedBox(height: 20), // Space between buttons.

            // Button to navigate to the Arithmetic View screen.
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ArithmeticViewScreen()),
                );
              },
              child: Text('Arithmetic View'),
            ),
          ],
        ),
      ),
    );
  }
}

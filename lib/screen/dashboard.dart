import 'package:flutter/material.dart';
import 'simple_interest.dart';
import 'area_of_circle.dart';
import 'arithmetic_view.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row containing Simple Interest and Area of Circle buttons.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Button for Simple Interest.
                SizedBox(
                  width: 160,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SimpleInterestScreen()),
                      );
                    },
                    child: Text(
                      'Simple\nInterest',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(width: 20), // Space between the two buttons.

                // Button for Area of Circle.
                SizedBox(
                  width: 160,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AreaOfCircleScreen()),
                      );
                    },
                    child: Text(
                      'Area of\nCircle',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), // Space between rows.

            // Button for Arithmetic View.
            SizedBox(
              width: 160,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ArithmeticViewScreen()),
                  );
                },
                child: Text(
                  'Arithmetic\nView',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

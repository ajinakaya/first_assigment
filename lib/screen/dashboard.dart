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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleInterestScreen()),
                );
              },
              child: Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AreaOfCircleScreen()),
                );
              },
              child: Text('Area of Circle'),
            ),
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

import 'package:flutter/material.dart';
import 'screen/dashboard.dart'; // Correct path to dashboard.dart

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Assignment',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


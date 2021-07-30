import 'package:flutter/material.dart';
import 'screens/reports_home.dart';

void main() => runApp(ReportsApp());

class ReportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Reports!",
        theme: ThemeData.light(),
        home: ReportsHomeScreen());
  }
}

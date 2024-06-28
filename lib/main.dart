import 'package:flutter/material.dart';
import 'package:dana1/screens/dashboard.dart';
import 'package:dana1/screens/pulsa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Menonaktifkan label debug
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/pulsa': (context) => Pulsa(),
      },
    );
  }
}

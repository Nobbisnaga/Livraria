import 'package:flutter/material.dart';
import 'package:flutter_application_3/home.dart';

void main() => runApp(const MyForms());

class MyForms extends StatelessWidget {
  const MyForms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sea Atlantis',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHome(),
    );
  }
}
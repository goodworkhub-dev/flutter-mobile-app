import 'package:flutter/material.dart';
import 'package:flutter_mobile_app/LoginPage.dart';
import 'package:flutter_mobile_app/SignUpPage.dart';
import 'package:flutter_mobile_app/WelcomePage.dart';
import 'package:flutter_mobile_app/frontPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Good work hub front page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => frontPage(),
        '/signup': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/welcome': (context) => WelcomePage(),
      },
    );
  }
}

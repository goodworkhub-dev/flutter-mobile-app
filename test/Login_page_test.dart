// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mobile_app/LoginPage.dart';



void main() {
  //Test the Login Page
  testWidgets('Login Page should work correctly', (WidgetTester tester) async{
    //Build our login  widget
    await tester.pumpWidget(
      MaterialApp(
        home: LoginPage(),
      ),
    );

    //Verify that Login text is displayed
      expect(find.byKey(Key('login_title')), findsOneWidget);


    //Verify that Email input box is displayed
   expect(find.byIcon(Icons.email), findsOneWidget);

    //Verify that password input box is displayed
    expect(find.byIcon(Icons.lock), findsOneWidget);



    //Verify that Login button is displayed
    expect(find.byKey(Key('login_button')), findsOneWidget);

    //Verify that the "Does you have an account" is displayed
    expect(find.text('Are you new here? '), findsOneWidget);

    //Verify that the register button is displayed
    expect(find.text('Register'), findsOneWidget);

  });
}

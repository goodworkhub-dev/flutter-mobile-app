

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_mobile_app/SignUpPage.dart';

void main() {
  //Test the Sign Up page
  testWidgets('Sign Up Page should render correctly', (WidgetTester tester) async{
    //Build our sign up widget
    await tester.pumpWidget(
          MaterialApp(
            home: SignUpPage(),
          ),
    );

    //Verify that Sign Up text is displayed
    expect(find.text('Sign Up'), findsOneWidget);

    //Verify that Username input box is displayed
    expect(find.byIcon(Icons.person), findsOneWidget);

    //Verify that Email input box is displayed
    expect(find.byIcon(Icons.email), findsOneWidget);

    //Verify that password input box is displayed
    expect(find.byIcon(Icons.lock), findsOneWidget);

    //Verify that confirm password input box is displayed
    expect(find.byIcon(Icons.lock_open), findsOneWidget);

    //Verify that Sign Up Submit button is displayed
    expect(find.text('Sign Up'), findsOneWidget);

    //Verify that the "Does you have an account" is displayed
    expect(find.text('Does you have account? '), findsOneWidget);

    //Verify that the login button is displayed
    expect(find.text('Login'), findsOneWidget);

  });
}


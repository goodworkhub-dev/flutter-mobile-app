// Component for Login page
// first - Login text
// second - company's image logo
// third - input box for email
// forth - input box for password
// fifth - login submit button
// sixth - row for asking whether user is new and navigator to sign up page
// for the funtionalities we have to implement code at onPresss() {} functions

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // first - Login text
              Text("Login",
                key: Key('login_title'),
                style: TextStyle(
                color: Color(0xFF867BF2),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 10),
              // second - company's image logo
              Image.asset("assets/images/gwh.png",
                width: 150,
                height: 150,
              ),
              SizedBox(height: 10),
              // third - input box for email
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                margin: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color:Colors.transparent)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color:Color(0xFF867BF2))
                    ),
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              // forth - input box for password
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                margin: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color:Colors.transparent)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(color:Color(0xFF867BF2))
                    ),
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // fifth - login submit button
              Container(
                margin: EdgeInsets.all(30),
                width: double.infinity,
                child: ElevatedButton(
                  key: Key('login_button'),
                  onPressed: () {
                    // Add your button click logic here
                  },
                  child: Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF867BF2),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      minimumSize: Size(0.8 * MediaQuery.of(context).size.width, 0),
                  ),
                ),
              ),
              // sixth - row for asking whether user is new and navigator to sign up page
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Are you new here? '),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text('Register'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

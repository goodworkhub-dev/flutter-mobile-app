import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Center(
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Sign Up",style: TextStyle(
                     color: Color(0xFF867BF2),
                     fontSize: 30,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   SizedBox(height: 20),
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
                         prefixIcon: Icon(Icons.person),
                         hintText: 'Username',
                         fillColor: Colors.grey[200],
                         filled: true,
                       ),
                     ),
                   ),
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
                         prefixIcon: Icon(Icons.lock_open),
                         hintText: 'Confirm password',
                         fillColor: Colors.grey[200],
                         filled: true,
                       ),
                     ),
                   ),
                   SizedBox(height: 15),
                   Container(
                     margin: EdgeInsets.all(30),
                     width: double.infinity,
                     child: ElevatedButton(
                       onPressed: () {
                         // Add your button click logic here
                       },
                       child: Text('Sign up',
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
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Does you have account? '),
                         TextButton(
                             onPressed: (){
                               Navigator.pushNamed(context, '/login');
                             },
                             child: Text('Login'),
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

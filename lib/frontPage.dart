import 'package:flutter/material.dart';
class frontPage extends StatelessWidget {
  const frontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/gwh.png",
                  width: 250,
                  height: 200,),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF867BF2),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        minimumSize: Size(0.8 * MediaQuery.of(context).size.width, 0)
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),

                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF867BF2),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      minimumSize: Size(0.8 * MediaQuery.of(context).size.width, 0)
                    ),
                    child: Text(
                        'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset("assets/images/Group.png",
                    width: 250,
                    height: 200,),
                ],
              ),
            ),
    );
  }
}

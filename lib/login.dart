import 'package:flutter/material.dart';
import 'package:untitled/WelcomeScreen.dart';
import 'package:untitled/register2.dart';
import 'package:untitled/start.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left:30,top:110),
            child: Text(
              'Let’s sign you in.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:30, top:170),
            child: Text(
              'Welcome back, You’ve been missed',
              style: TextStyle(
                color: Color(0xFF7B7B7B),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:270,left:30),
            child: Text(
              'Email',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:300,right: 25,left: 25),
            child: Container(
              width: 355,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFFF7F7F7),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50),
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:300,left:40,right: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter email",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:390,left:30),
            child: Text(
              'Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:420,right: 25,left: 25),
            child: Container(
              width: 355,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFFF7F7F7),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50),
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top:420,left:40,right: 40),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter paswword",
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(top:520,left:40,right: 40),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF484134),
                borderRadius: BorderRadius.circular(15),
              ),
              child : MaterialButton(
                onPressed: () {

                  Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>welcome(),),);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(top:570,left:40,right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?" ),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>register(),),);
                },
                    child: const Text(
                      "Register now",
                      style: TextStyle(
                        color: Color(0xFF484134),
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
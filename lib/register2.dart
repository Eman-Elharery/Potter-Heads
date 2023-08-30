import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/start.dart';

import 'login.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool showPassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(left:30, top:80),
                child: Text(
                  'Welcome in your new family (:',
                  style: TextStyle(
                    color: Color(0xFF7B7B7B),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top:120,left:30),
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:160,right: 25,left: 25),
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
                padding: EdgeInsets.only(top:160,left:40,right: 40),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Enter name",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top:230,left:30),
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
                padding: const EdgeInsets.only(top:260,right: 25,left: 25),
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
                padding: EdgeInsets.only(top:260,left:40,right: 40),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top:330,left:30),
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
                padding: const EdgeInsets.only(top:360,right: 25,left: 25),
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
                padding: EdgeInsets.only(top:360,left:40,right: 40),
                child: TextFormField(
                  controller: passwordController,
                  validator: (value)
                  {
                    final bool emailvalid= RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_{|}~]+@[a-zA-Z0-9]+/.a-zA-z]+").hasMatch(value!);
                    if(value!.isEmpty)
                    {
                      return "Password must not be empty";
                    }

                    return null;
                  }
                  ,
                  obscureText: showPassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Enter paswword",
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top:430,left:30),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:460,right: 25,left: 25),
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
                padding: EdgeInsets.only(top:460,left:40,right: 40),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value)
                  {
                    final bool emailvalid= RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_{|}~]+@[a-zA-Z0-9]+/.a-zA-z]+").hasMatch(value!);
                    if(value!.isEmpty)
                    {
                      return "Password must not be empty";
                    }

                    return null;
                  }
                  ,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                    hintText: "Enter paswword",
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:530,left:40,right: 40),
                child:  Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF484134),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child : MaterialButton(
                    onPressed: () async {
                      if(formkey.currentState!.validate())
                        print(emailController.text);
                      print(passwordController.text);

                      await  FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text
                      ).then((value)
                      {
                        print(value.user?.email);
                        print(value.user?.uid);
                      },
                      );
                      Navigator.push(context,MaterialPageRoute(
                        builder:(context)=>Start(),),);
                    },
                    child: const Text(
                      "Register",
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
                padding: EdgeInsets.only(top:580,left:40,right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("have an account?" ),
                    TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                        builder:(context)=>LoginScreen(),),);
                    },
                        child: const Text(
                          "login now",
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
        ),
      ),
    );
  }
}
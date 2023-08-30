import 'package:flutter/material.dart';

import 'WelcomeScreen.dart';
import 'login.dart';
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img_15.png"),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(280 , 600, 0, 0),
            child: TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(
                builder:(context)=>LoginScreen(),),);
            },
              child: const Text(
                'START',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                ),
              ),),

          )
        ],
      ),
    );
  }
}
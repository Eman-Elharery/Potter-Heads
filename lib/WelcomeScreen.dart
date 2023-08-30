import 'package:flutter/material.dart';
import 'package:untitled/try.dart';

import 'Book.dart';
import 'Store.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}
class _welcomeState extends State<welcome> {
  Widget build (BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wall2.png"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top:300,left:40,right: 40),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF484134),
                borderRadius: BorderRadius.circular(15),
              ),
              child : MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>Home3(),),);

                },
                child: const Text(
                  "Books",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:400,left:40,right: 40),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF484134),
                borderRadius: BorderRadius.circular(15),
              ),
              child : MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                    builder:(context)=> Home (),),);
                },
                child: const Text(
                  "Movies",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:500,left:40,right: 40),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF484134),
                borderRadius: BorderRadius.circular(15),
              ),
              child : MaterialButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>Home4(),),);
                },
                child: const Text(
                  "Store",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


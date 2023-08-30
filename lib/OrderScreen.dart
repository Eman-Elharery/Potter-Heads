import 'package:flutter/material.dart';

import 'Store.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  TextEditingController emailController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left:30,top:110),
            child: Text(
              'Let’s make your order.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top:200,left:30),
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
            padding: const EdgeInsets.only(top:230,right: 25,left: 25),
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
            padding: EdgeInsets.only(top:230,left:40,right: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your Name",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:300,left:30),
            child: Text(
              'Address',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:330,right: 25,left: 25),
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
            padding: EdgeInsets.only(top:330,left:40,right: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your address",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:400,left:30),
            child: Text(
              'Phone number',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:430,right: 25,left: 25),
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
            padding: EdgeInsets.only(top:430,left:40,right: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your phone number",
              ),
            ),
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
                    builder:(context)=>Home4(),),);
                },
                child: const Text(
                  "Order",
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
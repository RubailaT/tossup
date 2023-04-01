 import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int number1=1;
  int number2 =1;
  void display(){
    number1=Random().nextInt(6)+1;
    number2=Random().nextInt(6)+1;
    setState(() {
      number1;
      number2;
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("TOSS UP"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              GestureDetector(
                onTap:(){
                  display();
                },

                child: Container(
                width:100,

                    child: Image(image: AssetImage("images/dice $number1.png"),
                    ),),
              ),


              SizedBox(width: 20,),

              GestureDetector(
                onTap: (){
                  display();
                },
                child: Container(
                  width:100,
                  child:
                  Image(image: AssetImage("images/dice $number2.png"),
                  ),),
              ),
            ],
          )
        ],

      ),
    );
  }
}

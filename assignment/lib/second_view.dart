import 'package:assignment/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondView extends StatefulWidget {
  const SecondView({ Key? key }) : super(key: key);

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.symmetric(horizontal: MyHome.HorizontalMargin, vertical: MyHome.VerticalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello, Priya!",  style: GoogleFonts.lato(
      textStyle: TextStyle(color: Color(0xff08090A), letterSpacing: .5,
      fontWeight: FontWeight.w500, fontSize: 20),),),
          Text("What do you wanna learn today?",  style: GoogleFonts.lato(
      textStyle: TextStyle(color: Color(0xff6D747A), letterSpacing: .5,
      fontWeight: FontWeight.w500, fontSize: 15 ),),)
        ],
      ),
    );
  }
}
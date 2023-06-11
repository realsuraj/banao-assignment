import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdView extends StatefulWidget {
  final String image, title;
  const ThirdView({ Key? key, required this.image, required this.title }) : super(key: key);

  @override
  State<ThirdView> createState() => _ThirdViewState();
}

class _ThirdViewState extends State<ThirdView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      decoration: BoxDecoration(
    border: Border.all(color: Colors.blueAccent),
    borderRadius: BorderRadius.circular(10)
  ),
      child: Row(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(widget.image)),
        SizedBox(width: 10,),
        Text(widget.title,  style: GoogleFonts.lato(
      textStyle: TextStyle(color: Color(0xff598BED), letterSpacing: .5,
      fontWeight: FontWeight.w500, fontSize: 15),),)
      ],)
    );
  }
}
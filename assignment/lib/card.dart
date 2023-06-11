import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
                  width: MediaQuery.of(context).size.width*0.7,

      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                  width: MediaQuery.of(context).size.width  ,

            child: Image.asset('assets/fouth_card_new_born_baby.png',fit: BoxFit.fill,),
          ),
          SizedBox(height: 16,),

          Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),

            child: Text("LifeStyle", style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff598BED),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
          ),
          SizedBox(height: 16,),
          Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),

            child: Text("A complete guide for your new born baby", style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Colors.black,
                       fontWeight: FontWeight.w700, fontSize: 22),),),
          ),
          SizedBox(height: 16,),

          Container(
      padding: EdgeInsets.symmetric(horizontal: 8),

            child: Text("16 lessons",style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff6D747A),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
          ),
          SizedBox(height: 16,),

          
          ],)
      ),
    );
  }
}
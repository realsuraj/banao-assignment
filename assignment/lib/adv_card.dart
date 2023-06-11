import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardAdv extends StatefulWidget {
  const MyCardAdv({super.key});

  @override
  State<MyCardAdv> createState() => _MyCardAdvState();
}

class _MyCardAdvState extends State<MyCardAdv> {
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

            child: Image.asset('assets/fifth_yoga.png',fit: BoxFit.fill,),
          ),
          SizedBox(height: 16,),

          Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),

            child: Text("Babycare", style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff598BED),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
          ),
          SizedBox(height: 16,),
          Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),

            child: Text("Understanding of human behaviour", style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Colors.black,
                       fontWeight: FontWeight.w700, fontSize: 22),),),
          ),
          SizedBox(height: 16,),

          Container(
      padding: EdgeInsets.symmetric(horizontal: 8),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("13 Feb, Sunday",style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff6D747A),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Color(0xff598BED)),
                  borderRadius: BorderRadius.circular(100)),
                  
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Text("Book",style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff598BED),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
                )
              ],
            )
          ),
          SizedBox(height: 16,),

          
          
          ],)
      ),
    );
  }
}
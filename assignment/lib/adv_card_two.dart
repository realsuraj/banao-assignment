import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardAdvTwo extends StatefulWidget {
  const MyCardAdvTwo({super.key});

  @override
  State<MyCardAdvTwo> createState() => _MyCardAdvTwoState();
}

class _MyCardAdvTwoState extends State<MyCardAdvTwo> {
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

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("3 min",style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff6D747A),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Image.asset("assets/lock.png")),
                
              ],
            )
          ),
          SizedBox(height: 16,),

          
          
          ],)
      ),
    );
  }
}
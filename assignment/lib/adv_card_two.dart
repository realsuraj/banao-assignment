import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardAdvTwo extends StatefulWidget {
  final name,category;
  final bool isLocked;
  final int duration;
   MyCardAdvTwo({super.key,required this.name,required this.category, required this.duration,required this.isLocked
   });

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

            child: Text(widget.category, style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff598BED),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
          ),
          SizedBox(height: 16,),
          Container(
      padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),

            child: Text(widget.name, style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Colors.black,
                       fontWeight: FontWeight.w700, fontSize: 22),),
                        overflow: TextOverflow.ellipsis, maxLines: 2,),
          ),
          SizedBox(height: 16,),


             Container(
      padding: EdgeInsets.symmetric(horizontal: 8),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${widget.duration} min",style: GoogleFonts.lato(
                       textStyle: TextStyle(color: Color(0xff6D747A),
                       fontWeight: FontWeight.normal, fontSize: 15),),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Visibility(
                    visible: widget.isLocked,
                    child: Image.asset("assets/lock.png"))),
                
              ],
            )
          ),
          SizedBox(height: 16,),

          
          
          ],)
      ),
    );
  }
}
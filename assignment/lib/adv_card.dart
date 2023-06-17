import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyCardAdv extends StatefulWidget {
  final name,category,createdAt;
  final bool isLocked;
  final duration;
   MyCardAdv({super.key,required this.name,required this.category, required this.duration,required this.isLocked
   , required this.createdAt});

  @override
  State<MyCardAdv> createState() => _MyCardAdvState();
}

class _MyCardAdvState extends State<MyCardAdv> {
  @override
  Widget build(BuildContext context) {
     String dateString = widget.createdAt;
    DateTime date = DateTime.parse(dateString);
    
    DateFormat dateFormat = DateFormat('d MMM, EEEE');
    String formattedDate = dateFormat.format(date);

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
                Text(formattedDate,style: GoogleFonts.lato(
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
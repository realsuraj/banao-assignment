import 'package:assignment/adv_card.dart';
import 'package:assignment/adv_card_two.dart';
import 'package:assignment/card.dart';
import 'package:assignment/second_view.dart';
import 'package:assignment/third_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nav.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
  static double VerticalMargin = 5;
  static double HorizontalMargin = 15;

}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(children: [

              Container(
              decoration: BoxDecoration(color:  Color(0xffEEF3FD)),
                child: Column(children: [
              MyNav(),
              SizedBox(height: 20,),
              SecondView(),
              

              //third with grid view
              Container(
                margin: EdgeInsets.all(8),
                child: GridView.custom(
                  
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                        childAspectRatio: (1 / .3),
                        mainAxisSpacing: 10, crossAxisSpacing: 10),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        childrenDelegate: SliverChildListDelegate(
                          [
                          ThirdView(image: 'assets/third_view_book.png', title: 'Program',),
                          ThirdView(image: 'assets/third_view_help_circle.png', title: 'Get Help',),
                          ThirdView(image: 'assets/third_view_Book_open.png', title: 'Learn',),
                          ThirdView(image: 'assets/third_view_trello.png', title: 'DD Tracker',),
                         
                          ],
                        ),
                      ),
              ),
                
                ],),
              ),
             

             Container(
              margin: EdgeInsets.symmetric(horizontal: MyHome.HorizontalMargin,vertical: MyHome.VerticalMargin),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Programs for you", style: GoogleFonts.lato(
                   textStyle: TextStyle(
                    color: Colors.black,
                   fontWeight: FontWeight.w500, fontSize: 25),),),
                       Container(
                         child: Row(
                children: [ 
                  Text("View all",  style: GoogleFonts.lato(
                   textStyle: TextStyle(color: Color(0xff6D747A),
                   fontWeight: FontWeight.w500, fontSize: 12),),),
                     SizedBox(width: 5,),

                   Container(
                    width: 30,
                    child: FaIcon(FontAwesomeIcons.arrowRight ,color: Color(0xff6D747A), size: 15,))
                   
                   ],
                         ),
                       ),
                ],
               ),
             ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: MyHome.HorizontalMargin,vertical: MyHome.VerticalMargin),

            height: MediaQuery.of(context).size.height * 0.45,  


            child: new ListView.builder(itemBuilder: (context, index){
                return MyCard();
              }, 
              itemCount: 2,
              scrollDirection: Axis.horizontal,),
            ),

            //new card

             Container(
              margin: EdgeInsets.all(10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Events and experiences", style: GoogleFonts.lato(
                   textStyle: TextStyle(
                    color: Colors.black,
                   fontWeight: FontWeight.w500, fontSize: 25),),),
                       Container(
                         child: Row(
                children: [ Text("View all",  style: GoogleFonts.lato(
                   textStyle: TextStyle(color: Color(0xff6D747A),
                   fontWeight: FontWeight.w500, fontSize: 12),),),
                   SizedBox(width: 5,),
                   Container(
                    width: 30,
                    child: FaIcon(FontAwesomeIcons.arrowRight ,color: Color(0xff6D747A), size: 15,))
                   ],
                         ),
                       ),
                ],
               ),
             ),

            Container(
            height: MediaQuery.of(context).size.height * 0.48,  


            child: new ListView.builder(itemBuilder: (context, index){  
                return MyCardAdv();
              }, 
              itemCount: 2,
              scrollDirection: Axis.horizontal,),
            ),


            //new card

             //new card

             Container(
              margin: EdgeInsets.all(10),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text("Lessons for you", style: GoogleFonts.lato(
                   textStyle: TextStyle(
                    color: Colors.black,
                   fontWeight: FontWeight.w500, fontSize: 25),),),
                       Container(
                         child: Row(
                children: [ Text("View all",  style: GoogleFonts.lato(
                   textStyle: TextStyle(color: Color(0xff6D747A),
                   fontWeight: FontWeight.w500, fontSize: 12),),),
                   SizedBox(width: 5,),

                   Container(
                    width: 30,
                    child: FaIcon(FontAwesomeIcons.arrowRight ,color: Color(0xff6D747A), size: 15,))
                   ],
                         ),
                       ),
                ],
               ),
             ),

            Container(
            height: MediaQuery.of(context).size.height * 0.48,  
            child: new ListView.builder(itemBuilder: (context, index){  
                return MyCardAdvTwo();
              }, 
              itemCount: 2,
              scrollDirection: Axis.horizontal,),
            ),
            
              
            ],),
          ),
        ),
      )
    );
  }
}
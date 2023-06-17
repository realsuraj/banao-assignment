import 'package:assignment/adv_card.dart';
import 'package:assignment/adv_card_two.dart';
import 'package:assignment/card_one.dart';
import 'package:assignment/model/model_card_1.dart';
import 'package:assignment/second_view.dart';
import 'package:assignment/third_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'model/model_card_2.dart';
import 'nav.dart';

class MyHome extends StatefulWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
  static double VerticalMargin = 5;
  static double HorizontalMargin = 15;

}

class _MyHomeState extends State<MyHome> {
    final List<modelCardTwo> apiCardTwo = [];
    final List<modelCardOne> apiCardOne = [];
    bool isLoadingForCard = true, isLoadingForCardTwo = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHttp();
    getHttp2();

  }

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
                   fontWeight: FontWeight.w500, fontSize: 22),),),
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


            child: isLoadingForCard ? Center(child: CircularProgressIndicator(),):
            
            ListView.builder(itemBuilder: (context, index){
                return MyCard(category: apiCardOne[index].category.toString(), 
                lesson: apiCardOne[index].lesson.toString(), 
                name: apiCardOne[index].name.toString(),);
              }, 
              itemCount: apiCardOne.length,
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
                   fontWeight: FontWeight.w500, fontSize: 22),),),
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
              margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.48,  


            child: isLoadingForCardTwo ? Center(child: CircularProgressIndicator(),):
            
            ListView.builder(itemBuilder: (context, index){  
                return MyCardAdv(category: apiCardTwo[index].category.toString(), 
                createdAt: apiCardTwo[index].createdAt.toString(), 
                duration: int.parse(apiCardTwo[index].duration.toString()), 
                isLocked: bool.parse(apiCardTwo[index].locked.toString()), 
                name: apiCardTwo[index].name.toString(),);
              }, 
              itemCount: apiCardTwo.length,
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
                   fontWeight: FontWeight.w500, fontSize: 22),),),
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
              margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.48,  
            child: isLoadingForCardTwo ?Center(child: CircularProgressIndicator()):
            
            
            ListView.builder(itemBuilder: (context, index){  
                return  MyCardAdvTwo(category: apiCardTwo[index].category.toString(), 
                createdAt: apiCardTwo[index].createdAt.toString(), 
                duration: int.parse(apiCardTwo[index].duration.toString()), 
                isLocked: bool.parse(apiCardTwo[index].locked.toString()), 
                name: apiCardTwo[index].name.toString(),);
              }, 
              itemCount: apiCardTwo.length,
              scrollDirection: Axis.horizontal,),
            ),
            
              
            ],),
          ),
        ),
      )
    );
  }


   Future<List<modelCardTwo>> getHttp() async {
    try {
    final response = await Dio().get('https://632017e19f82827dcf24a655.mockapi.io/api/lessons');
    final List<dynamic> responseData = response.data['items'];

    for (var itemData in responseData) {
      final modelCardTwo item = modelCardTwo.fromJson(itemData);
      apiCardTwo.add(item);
    }
    setState(() {
      isLoadingForCardTwo = false;
    });
    return apiCardTwo;
  } catch (error) {
    throw Exception('Failed to fetch apiCardTwo: $error');
  }
}

 Future<List<modelCardOne>> getHttp2() async {
    try {
    final response = await Dio().get('https://632017e19f82827dcf24a655.mockapi.io/api/programs');
    final List<dynamic> responseData = response.data['items'];

    for (var itemData in responseData) {
      final modelCardOne item = modelCardOne.fromJson(itemData);
      apiCardOne.add(item);
    }
    setState(() {
      isLoadingForCard = false;
    });
    return apiCardOne;
  } catch (error) {
    throw Exception('Failed to fetch apiCardOne: $error');
  }
}
}

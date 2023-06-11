import 'package:assignment/home.dart';
import 'package:flutter/cupertino.dart';

class MyNav extends StatefulWidget {
  const MyNav({ Key? key }) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MyHome.HorizontalMargin,vertical: MyHome.VerticalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 9, vertical: 20),
          height: 10,
          width: 20,
          child: Image.asset("assets/top_icon_sandwich.png", fit: BoxFit.fill,)),
        Container(
          
          child: Row(children: [
            Container(
               height: 25,
          width: 25,
              child: Image.asset("assets/top_icon_message.png", fit: BoxFit.fill)),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
           height: 25,
          width: 18,
          child: Image.asset("assets/top_icon_notification.png", fit: BoxFit.fill)),
          ],),
        )
      ],),
    );
  }
}
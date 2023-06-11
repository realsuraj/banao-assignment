import 'package:assignment/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() =>
      _BottomNavState();
}

class _BottomNavState
    extends State<BottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   MyHome(),
    Text(
      'Learn',
      style: optionStyle,
    ),
    Text(
      'Hub',
      style: optionStyle,
    ),
    Text(
      'Chat',
      style: optionStyle,
    ),
     Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      toolbarHeight: 0,
       systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Color(0xffEEF3FD)),
  
  
    ),
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_book.png"),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_category.png"),
            label: 'Hub',
          ),
            BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_chat.png"),
            label: 'Chat',
          ),
            BottomNavigationBarItem(
            icon: Image.asset("assets/bottom_profile.png"),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

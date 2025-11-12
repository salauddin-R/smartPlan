import 'package:flutter/material.dart';
import 'package:smart_plan/style.dart';

import 'HomePage.dart';
import 'MyFarm.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int _currentIndex=0;
  List _data=[
    HomePage(),Myfarm(),HomePage(),Myfarm()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _data[_currentIndex],
        bottomNavigationBar:BottomNavigationBar(
          selectedItemColor: green,
          unselectedItemColor:black,
          currentIndex:_currentIndex,
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.calendar_month_outlined),label: "Calendar"),
            BottomNavigationBarItem(icon:Icon(Icons.notifications_outlined),label:"Notification" ),
            BottomNavigationBarItem(icon:Icon(Icons.person_outline),label: "Person"),
          ],
          onTap: (index){
            setState(() {
              _currentIndex=index;
            });
          },
        )
    );
  }
}

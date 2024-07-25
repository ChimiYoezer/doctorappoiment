
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_application/data/Doc_list.dart';
import 'package:new_application/pages/classwork.dart';
import 'package:new_application/pages/classwork2.dart';
import 'package:new_application/pages/classwork5.dart';
import 'package:new_application/slider.dart';
class buttomnavbar extends StatefulWidget {
  const buttomnavbar({super.key});
@override
State<buttomnavbar> createState() => _buttomnavbarState();}
class _buttomnavbarState extends State<buttomnavbar> {
  List list=[    homePage(),
    DocDetails(doctorsClass: allDocs[0]),
    CarouselDemo(),
  ];
  List<Icon> allItems=[
 Icon(Icons.home),

 Icon(Icons.search),
 Icon(Icons.person),
  ];
  int _currentIndex=0;
  @override  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {

          }
          );
          },
        items: allItems,
      ),
    );
  }
}

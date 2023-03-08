


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mob/Footer.dart';
import 'package:mob/Slider/Carosel.dart';
import 'package:mob/cards.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  void callme(){
print("in call me");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar:AppBar(
     
     shadowColor: Colors.grey, 
     backgroundColor: Colors.grey,
     elevation: 50,
     title: Text("One Who Creates"),

     actions: [
      
      Icon(Icons.more_vert),
      
     ],
    ) ,body: Column(children:<Widget> [
     Carosel()



  ]),bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home")
      ,
    BottomNavigationBarItem(icon: Icon(Icons.business ), label: "Business"),
    BottomNavigationBarItem(icon: Icon(Icons.search ), label: "Search",),
      
    ],
    backgroundColor: Colors.white,
    elevation: 50,
    onTap: (value) => {},
    
  ),backgroundColor: Colors.black54,));

    
  }
}

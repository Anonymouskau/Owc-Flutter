import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mob/Aboutus/Aboutus.dart';
import 'package:mob/Slider/Carosel.dart';

 class HomeComponent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(child:  Scaffold(appBar:AppBar(
     
     shadowColor: Colors.black, 
     backgroundColor :Colors.black,
     elevation: 50,
     title: Text("One Who Creates"),
    
     
    ) ,body: Column(children:<Widget> [
      Carosel(),
      Aboutus(),
     

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
    
  ),backgroundColor: Colors.pink.shade50,drawer: Drawer(child: Column(children: [
  
  DrawerHeader(child: Text("Hi User")),
  ListTile(title: Text("Item1"),),
  ListTile(title:Text("iterm2"))
   


  ],)),));
  }
}
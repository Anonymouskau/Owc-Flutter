import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mob/Elveated.dart';

class Aboutus extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
   return   Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(children: [
        Card(child:Column(children: [
         
          Text("         OWC is a leading provider of rental spaces for Offices, Restarunts, and Special occasions. We specialize in offering unique, customizable spaces that meet the needs of a variety of clients, from individuals planning a small party to large corporations hosting a conference.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white,fontStyle: FontStyle.italic),)
          ,Elevated(" Get Started")

        ],),shadowColor: Colors.black,color: Colors.black,margin: EdgeInsets.zero,)
      
      ],),
     );
  


  }
}
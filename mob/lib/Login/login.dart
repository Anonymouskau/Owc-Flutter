import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
 class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(appBar: AppBar(title: Text("Login"),backgroundColor: Colors.blueGrey,),body: Column(children: [
   SizedBox(height: 20,)   
   , Center(child:Column(children: [
      Icon(Icons.lock,size: max(0, 100)),
      Padding(padding:  EdgeInsets.all(12),child: TextField(decoration: InputDecoration(labelText:"Email" ),),),
         Padding(padding:  EdgeInsets.all(12),child: TextField(decoration: InputDecoration(labelText:"Password" ),),),
         SizedBox(height: 20,),
        Center(child: ElevatedButton(onPressed: () => {},child: Text("Sign in "),style: ElevatedButton.styleFrom(backgroundColor: Colors.black)),),
        SizedBox(height: 20,),
      Center(child: Row(children: [
        
      ],),) 
    ],)) ,
  

    ],),));
  }
}
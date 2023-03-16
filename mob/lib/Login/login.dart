 

import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../config.dart';
 class Login extends StatelessWidget {
  

  final mycontroller=TextEditingController();
  final mycontroller2=TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(backgroundColor: Colors.pink.shade50,appBar: AppBar(title: Text("Login"),backgroundColor: Colors.black,),body: Column(children: [
   SizedBox(height: 20,)   
   , Center(child:Column(children: [
      Icon(Icons.lock,size: max(0, 100)),
      Padding(padding:  EdgeInsets.all(12),child: TextField( decoration: InputDecoration(labelText:"Email" ), controller:mycontroller ),),
         Padding(padding:  EdgeInsets.all(12),child: TextField(obscureText: true,decoration: InputDecoration(labelText:"Password",),controller: mycontroller2,),),
         SizedBox(height: 20,),
        Center(child: ElevatedButton(onPressed: () async {
        var resp= await  post(Uri.parse(new config().url+"/User/Login"),body: {"email":mycontroller.text,"password":mycontroller2.text});

      Map<String,dynamic>user=    jsonDecode(resp.body);
              if(mycontroller.text==user['email']){
                Navigator.pushNamed(context,'/product' );

              }
              else{
                Navigator.pushNamed(context,'/login' );
              }   
                   
         }
          ,child: Text("Sign in "),style: ElevatedButton.styleFrom(backgroundColor: Colors.black)),),
        SizedBox(height: 20,),
      Center(child: Row(children: [
        
      ],),) 
    ],)) ,
  

    ],),));
  }
}
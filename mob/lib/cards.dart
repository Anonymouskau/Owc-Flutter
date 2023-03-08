


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class cards extends HookWidget{
@override
Widget build(BuildContext buildContext){
 
return Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),child:Card(
  elevation: 200,
  shadowColor:Colors.black,
   
  child:Column(children: [
     TextField(autofocus: true ),
      TextField(autofocus: true,),
       TextField(autofocus: true,),
        TextField(autofocus: true,)
  ],

  ),

));   


}


}
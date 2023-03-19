





































//     ]),
       
//     ));




//     }) 
//     );


// void initState() {
//     // TODO: implement initState
//     super.initState();


//   

  
//   }







import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:http/http.dart';

import 'package:mob/config.dart';

 class product extends StatefulWidget {
  const product({super.key});
   



  @override
  State<product> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<product> {
 
 
 
  @override
 
     
  Widget build(BuildContext context) {
   
 return   FutureBuilder(
   builder: (context,AsyncSnapshot) {
     return ListView.builder(
         itemCount: 1 ,itemBuilder: ((context, index) {
           return     Container(child:
             Column(
        
        children: [
          


          
           GFCard(
                boxFit: BoxFit.cover,
                titlePosition: GFPosition.start,
                showOverlayImage: true,
                imageOverlay: NetworkImage(
                  'https://images.pexels.com/photos/13796988/pexels-photo-13796988.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                ),
                title: GFListTile(
                  
                  titleText: 'Game Controllers',
                  subTitleText: 'PlayStation 4',
                  color: Colors.white,
                ),
                content: Text("Some quick example text to build on the card", style: TextStyle(color: Colors.white)),
                buttonBar: GFButtonBar(
                  children: <Widget>[
                    GFButton(
        onPressed: () {},
        text: 'Buy',
       ),

                  ],
                ),
              ),



        ]),
           
        );




        }) 
        );
   }
 );



  }
}
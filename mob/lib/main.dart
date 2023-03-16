


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mob/Aboutus/Aboutus.dart';
import 'package:mob/Elveated.dart';
import 'package:mob/Footer.dart';
import 'package:mob/Home%20.dart';
import 'package:mob/Login/login.dart';
import 'package:mob/Product/product.dart';
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
    return MaterialApp(home:HomeComponent(),initialRoute: "/",routes:{"/login":(context) => Login(),"/product":(context) => product() } ,);

    
  }
}

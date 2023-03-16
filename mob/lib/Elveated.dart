import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Elevated extends StatelessWidget{
  String props;
  Elevated(this.props);
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      child: Text("${this.props}"),
    onPressed: () => {Navigator.pushNamed(context,"/login")},
    style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade400),
  
  
  
  );
  }


}
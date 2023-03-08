

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class footer extends HookWidget{

 @override
  Widget build(BuildContext buildContext){
     return Container(child:BottomAppBar(
     child: Row(
      children: [
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.workspaces),
        
        
      ],
     ),
     ),alignment: Alignment.bottomCenter  );
  }
}





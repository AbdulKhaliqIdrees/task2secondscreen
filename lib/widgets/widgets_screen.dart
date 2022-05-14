import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget{
  const WidgetScreen(this.test1,this.text2,this.image,{Key? key}) : super(key: key);
  final String test1;
  final String text2;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
                     leading:CircleAvatar(
                     backgroundImage: AssetImage("assets/images/$image.jpg"),  
                     ),
                     
                     textColor: Colors.white,
                     title: Text(test1,style: TextStyle(fontSize: 20),),
                     subtitle: Text("I Love Pakistan!",style: TextStyle(color: Colors.white38),),
                     trailing: Text(text2,style: TextStyle(fontSize: 23),),
    ); 
  }

}
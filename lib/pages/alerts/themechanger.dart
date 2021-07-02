import 'package:flutter/material.dart';
class changetheme extends StatelessWidget {
   changetheme({ Key key }) : super(key: key);

  @override
  bool themechangerr=false;
   void Themechangerr(){
   Obx(){
     themechangerr==true;
   }
  }
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: (){
       Themechangerr();

      },child: Text("Change theme"),),
      
    );
  }
}
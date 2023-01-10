import 'package:flutter/material.dart';


const  kLargeText= TextStyle(
            fontSize: 25.0,
           wordSpacing:5,
           letterSpacing: 5,
            color: Colors.white, 
);

const  kLabelTextStyle= TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),);
const kNumberStyle=TextStyle(
            fontSize: 50.0,
            fontWeight:FontWeight.w900,
             color: Colors.white,
             );

const  kTitleTextStyle= TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
            );
const  kResultText= TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white );

const  kBMITextstyle= TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.white );
const  kBMIBodyTextstyle= TextStyle(
  
            fontSize: 20.0,
           
            fontWeight: FontWeight.bold,
            color: Colors.white 
            

            
            );  


ThemeData getApplicationTheam(){
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: Color(0Xff0A0E21),
      elevation: 0,
      centerTitle: false,
    ),

  );

}
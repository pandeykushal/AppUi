import 'package:flutter/material.dart';




class ReusableCard extends StatelessWidget {
   ReusableCard( { this.cardChild});

   
    final  Widget? cardChild;
  
  @override
  Widget build(BuildContext context) {
    return Container(
           
      child: cardChild,
    //  margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ Color(0xffB71838),Color(0xff301838)])
                



        ),
        
      );
  }
}





class ReusableCard2 extends StatelessWidget {
   ReusableCard2( { this.cardChild});

   
    final  Widget? cardChild;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
     
        decoration: BoxDecoration(
          color: Colors.white,
          
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        ),
        
      );
  }
}


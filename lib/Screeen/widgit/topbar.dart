import 'package:flutter/material.dart';

class topbar extends StatelessWidget {
  const topbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      
      child: Row(
       
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
           Icon(Icons.arrow_back_ios_new),
           Icon(Icons.search),
            
        ],
      ),
    );
  }
}
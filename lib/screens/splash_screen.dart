import 'dart:html';

import 'package:fitness_club/screens/constaints/constanstants.dart';
import 'package:fitness_club/screens/sign_in_screen.dart';
import 'package:fitness_club/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ Color(0xffB71838),Color(0xff301838)])),
              child: Scaffold(
                 backgroundColor: Colors.transparent,
                 
                body: SingleChildScrollView (
                  child: Column(
                    
                    children: [
                      const Center(
                        
                        child:
                             Icon(
                            Icons.airline_seat_flat_angled,
                            color: Colors.white,
                            size: 100.0,
                          ),
                          
                
                      ),
                      const Text('Fitness Club',style: kLargeText,),
                      const SizedBox(
                        height: 150,
                      ),
                      
                        const Text('Welcomes',style: kNumberStyle,),
                
                        const SizedBox(height: 30),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white
                            ),
                             onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));
                             },
                            child: Padding(
                              padding: const EdgeInsets.only(left:50.0,right: 50,),
                              child: const Text('SIGN IN',style:TextStyle(color: Colors.black,)),
                            ),
                          ),
                          const SizedBox(
                        height: 20,
                      ),
                      
                
                          OutlinedButton(
                            
                            
                             onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen(),));
                             },
                            child: const Text('SIGN UP'),
                          ),
                          const SizedBox(height: 100,),
                          const Text('Login with Social Media',style: kLabelTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.facebook_rounded,
                                color: Colors.white,
                                size: 50.0,
                              ),
                               const Icon(
                                Icons.facebook_rounded,
                                color: Colors.white,
                                size: 50.0,
                              ),
                               const Icon(
                                Icons.facebook_rounded,
                                color: Colors.white,
                                size: 50.0,
                              ),
                            ],
                          ),               
                      
                    ],

                    
                    
                  ),
                ),
                
              ),
    );
    
  }
}
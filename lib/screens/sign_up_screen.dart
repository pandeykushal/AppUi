import 'package:fitness_club/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

import 'constaints/constanstants.dart';
import 'constaints/reusable_card.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
         decoration: const BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ Color(0xffB71838),Color(0xff301838)])
                

       ),
      child: Scaffold(
         backgroundColor: Colors.transparent,
        
        body: Column(
          
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Container(
                      
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       
                        
                        children: [
                         
                      
                          SizedBox(
                            height: 25.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:25.0),
                            child: Text('Create Your ',style: kResultText,),
                          ),
                          SizedBox(
                            height: 10,
                          ),
Padding(
  padding: const EdgeInsets.only(left:25.0),
  child:   Text('Account',style: kResultText,),
),
                          //    Align
                          // (
                          //   alignment: Alignment.topLeft,
                          //   child: Text('Account ',style: kResultText,)),
                          

                           SizedBox(
                            height: 50.0,
                          ),
              ],
                      ),
                    ),
                  ),
                
                ),

              ],
            ),
              Expanded(
                child: ReusableCard2(
                  
                  cardChild: SingleChildScrollView(
                    child: Container(
                       margin: const EdgeInsets.all(20),
                      
                      height:MediaQuery.of(context).size.height ,
                    width: MediaQuery.of(context).size.width,
                          child: Column(
                           
                            
                            children: [

                              SizedBox(
                        height: 50,
                      ),
                      
                        TextFormField(                                          
          
            decoration: const InputDecoration(
               border: UnderlineInputBorder(),
              label: Text('FullName',style:TextStyle(color: Colors.red) ,)
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
                       decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
              
              label: Text('Gmail',style:TextStyle(color: Colors.red))
            ),
          ),
           SizedBox(
            height: 20,
          ),
          TextFormField(
                       decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
              
              label: Text('Password',style:TextStyle(color: Colors.red))
            ),
          ),
           SizedBox(
            height: 20,
          ),
          TextFormField(
                       decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
              
              label: Text('Conform Password',style:TextStyle(color: Colors.red))
            ),
          ),
          SizedBox(
            height: 10,
          ),
          
          
           ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black
                            ),
                             onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));
                             },
                            child: const Text('SIGN UP'),
                          ),
                          
                              SizedBox(
                        height: 100,
                      ),
                       Row(
            children: [
              const Spacer(),
              Text("Already  have a account?"),
                
              
            ],
          ),
           Row(
                         children: [
                          const Spacer(),
               TextButton(
  
  onPressed: () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));
  },
  child: Text('SIGN IN'),
),
             ],
           )




                           

                              ],
                          ),   
                          
                                     ),
                                     
                  ),
                  ),
              ),
              
          ],

        ),
      ),
    );

    
  }
}
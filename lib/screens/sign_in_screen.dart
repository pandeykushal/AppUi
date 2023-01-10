import 'package:fitness_club/screens/constaints/constanstants.dart';
import 'package:fitness_club/screens/constaints/reusable_card.dart';
import 'package:fitness_club/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
   const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
  
}

class _SignInScreenState extends State<SignInScreen> {
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
                       
                        
                        children: const [                       
                      
                          SizedBox(
                            height: 25.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:25.0),
                            child: Text('Hello !',style: kResultText,),
                          ),
                          SizedBox(
                            height: 10,

                          ),
                          Padding(
                            padding: EdgeInsets.only(left:25.0),
                            child: Text('Welcome Again',style: kResultText,),
                          ),

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

                              const SizedBox(
                        height: 50,
                      ),
                      
                        TextFormField(                                          
          
            decoration: const InputDecoration(
               border: UnderlineInputBorder(),
              label: Text('Gmail',style:TextStyle(color: Colors.red) ,)
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
                       decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
              
              label: Text('Password',style:TextStyle(color: Colors.red))
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Spacer(),
              Text('Forget Password'),
              
              
            ],
          ),
           ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                            ),
                             onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen(),));
                             },
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text('SIGN IN'),
                            ),
                          ),
                          
                              const SizedBox(
                        height: 100,
                      ),
                       Row(
            children: const [
              Spacer(),
              Text("Don't have a account?"),
                
              
            ],
          ),
           Row(
                         children: [
                          const Spacer(),
               TextButton(
  
  onPressed: () { 
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen(),));
  },
  child: Text('SIGN UP'),
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
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'constannts/constannts.dart';

class UiScreen extends StatefulWidget {
  const UiScreen({super.key});

  @override
  State<UiScreen> createState() => _UiScreenState();
}

class _UiScreenState extends State<UiScreen> {
  bool _isTapped = false;
  
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffe8ebf0),
                width: 2,
              ),
              color: Color(0xffe8ebf0),
            ),
            
            child: Column(
            
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                  children: const [
                     Icon(Icons.arrow_back_ios_new),
                     Icon(Icons.search),
                      
                  ],
                ),
          
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
          
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children: const [
                    Text('Graphic Desigh',
                    style: kSmallText),
                    Spacer(),
          
                    
                    Icon(Icons.filter_alt,textDirection: TextDirection.ltr,),
                    Text('filter',style: kSmallText,textAlign: TextAlign.right,),
                    
          
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:  [
                GestureDetector(
                             onTapDown: (TapDownDetails details) {
                              setState(() {
                                _isTapped = true;
                              });    
                               },
                               onTapUp: (TapUpDetails details){
                                setState(() {
                                  _isTapped = false;
                                  
                                });
                               },
               
                                child:  Text('LogoDesign',
                                style:TextStyle(
                                  color: _isTapped ?Colors.red :Colors.black

                                ),),
                                  ),
                                  SizedBox(width: 10,),
                                
          
                  GestureDetector(
                    onTapDown: (TapDownDetails details) {
                              setState(() {
                                _isTapped = true;
                              });    
                               },
                               onTapUp: (TapUpDetails details){
                                setState(() {
                                  _isTapped = false;
                                  
                                });
                               },
               
                                child:  Text('Motion Graphics',
                                style:TextStyle(
                                  color: _isTapped ?Colors.red :Colors.black

                                ),),

                    // child: Text('Motion Graphics',style: kButtonText,),
          
                  ),SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
          
                    },
                    child: Text('Motion Graphics',style: kButtonText,),
          
                  ),SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
          
                    },
                    child: Text('3D Animation',style: kButtonText,),
          
                  ),SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
          
                    },
                    child: Text('Blender Animation',style: kButtonText,),
          
                  ),SizedBox(width: 10,),
                  GestureDetector(
                    onTap: (){
          
                    },
                    child: Text('Graphics',style: kButtonText,),
          
                  ),SizedBox(width: 10,),
                    
                  ] 
                  
                ),
              ),
              SingleChildScrollView(
                scrollDirection:Axis.horizontal ,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                 decoration: BoxDecoration(
                            border: Border.all(
                  color: Color(0xffe8ebf0),
                  width: 2,
                            ),
                            color: Colors.white,
                          ),
                          
                    child: Column(
                      children: [
                        Row(
                          children: [
                               SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                    child: Container(
                      child:Row(
                        children: [
                          Column(
                          children: [
                             Row(
                               children: [
                                 Container(
                                  
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                       image:DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage("assets/Images/p1.png" )),
                          
                      ),
                      
                            
                    ),
                               ],
                               
                             ),
                             Text('Logo Design ',style:TextStyle(color: Colors.black),),
                          ],
                        ),
                         SizedBox(
                          width: 15,
                          
                         ),
                         Column(
                          children: [
                             Row(
                               children: [
                                 Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red,
                       image:DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage("assets/Images/p2.png" )),
                          
                      ),
                      
                            
                    ),
                               ],
                               
                             ),Text('3D Logo Design ',style:TextStyle(color: Colors.black),),

                          ],
                        ),
                        SizedBox(
                          width: 10,
                            
                        ),
                         Column(
                          children: [
                             Row(
                               children: [
                                 Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red,
                       image:DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage("assets/Images/p3.png" )),
                          
                      ),
                      
                            
                    ),
                               ],
                             ),Text('2D Logo Design ',style:TextStyle(color: Colors.black),),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                         Column(
                          children: [
                             Row(
                               children: [
                                 Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red,
                       image:DecorationImage(
                        fit: BoxFit.cover,
                          image: AssetImage("assets/Images/p1.png" )),
                          
                      ),
                     
                            
                    ),
                               ],
                             ),Text('Web Designer ',style:TextStyle(color: Colors.black),),
                          ],
                        ),
                
                        ],
                      ),
                    ),
                  ),
                  
                  
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        
                      ],
                            
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                     Container(
                     
                     child: Row(children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                           image:const DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage("assets/Images/pp1.png" )),
                              
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                           color: Colors.white,
                          padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Design media ',style: TextStyle(fontSize: 18),),

                              Icon(Icons.favorite_border,),
                            ],
                          ),
                          
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'),

                        ]),  
                      
                          
                        ),
                      ),
        
                      ],),
                    ),
                    const SizedBox(
                            height: 10,
                          ),
                       
                      
                       Container(
                      color: Colors.white,
                     child: Row(children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                           image:DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage("assets/Images/pp2.png" )),
                              
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                           color: Colors.white,
                          padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          

                          children: [
                          Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Design media',style: TextStyle(fontSize: 18),),

                              Icon(Icons.favorite_border,),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          
                          

                          Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'),

                        ]),  
                      
                          
                        ),
                      ),
        
                      ],),
                    ),
                       
                       const SizedBox(
                            height: 10,
                          ),
                       Row(children: [
                        Expanded(
                          child: Container(
                            height: 150,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                             image:DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage("assets/Images/pp3.png" )),
                                
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                             color: Colors.white,
                            padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            

                            children: [
                            Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Design media',style: TextStyle(fontSize: 18),),

                                Icon(Icons.favorite_border,),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            
                            

                            const Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'),

                          ]),  
                        
                            
                          ),
                        ),
        
                        ],),
                       const SizedBox(
                            height: 10,
                          ),
                      
                      Row(children: [
                       Expanded(
                         child: Container(
                           height: 150,
                           width: 200,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                            image:const DecorationImage(
                             fit: BoxFit.cover,
                               image: AssetImage("assets/Images/pp4.png" )),
                               
                           ),
                         ),
                       ),
                       Expanded(
                         child: Container(
                            color: Colors.white,
                           padding: EdgeInsets.all(16.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           

                           children: [
                           Row(
                             
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: const [
                               Text('Design media',style: TextStyle(fontSize: 18),),

                               Icon(Icons.favorite_border,),
                             ],
                           ),
                           const SizedBox(
                             height: 5,
                           ),
                           
                           

                           const Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.'),

                         ]),  
                       
                           
                         ),
                       ),
        
                       ],),
                       
                  
                  
                  
                  ],
              
                ),
              ),
              
              
            ],
            
                ),
          ),
        ),
    

      ),
      
      // color: Colors.white,
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:swadhinui/screens/constannts/constannts.dart';
import 'package:swadhinui/screens/widgit/topbar.dart';

class Profile extends StatelessWidget {
  
  const Profile({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
        color: Color.fromARGB(80, 243, 241, 241)
        
      ),
      child: Column(
        children: [
          const SizedBox(height: 40, ),
          const topbar(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children:  [
                 CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: 
                      //  Icon(Icons.person,size: 80,color: Colors.black,)
                      ClipOval(child: Image.network(
                        'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                        )  
                    ),
                    ),
                     
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           Text('John Doe'),
                          Text('Graphics Design'),
                        ],
                      ) , 
                      const Spacer(),
                       ElevatedButton(
  onPressed: () {
    
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.white, 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), 
    ),
  ),
  child: Row(
    children: [
      Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.green,
        ),
      ),
      SizedBox(width: 8), 
      Text(
        'Chat',
        style: TextStyle(fontSize: 16,color: Colors.black),
      ),
    ],
  ),
)
  

              ],
            
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.white ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   GestureDetector(
                    onTap: (){
                    },
                    child: Text('About'),
                  ),
                    GestureDetector(
                    onTap: (){
                    },
                    child: Text('Reviews'),
                  ),
                   GestureDetector(
                    onTap: (){
                    },
                    child: Text('Portfolio'),
                  ), GestureDetector(
                    onTap: (){
                    },
                    child: Text('Gig'),
                  ),
                   GestureDetector(
                    onTap: (){
                    },
                    child: Text('Portfolio'),
                  ),
                  

                  
                ],
              ),
            ),
          ),
          GestureDetector(
            child:  Expanded(
                        child: Container(
                           color: Colors.white,
                          padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                          Text('MYself',style: TextStyle(fontSize: 18),),

                          
                          
                          const SizedBox(
                            height: 25,
                          ),
                          const Text('Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),
                          const SizedBox(
                            height: 20,
                          ),
                        
                          Row(children: const [
                            Text('From',style: klightText,),
                            SizedBox(
                              width: 150,
                            ),
                             Text('Member Since',style: klightText,)

                        ],),
                        SizedBox(height: 10,),
                           Row(children: const [
                            Text('Kathmandu Nepal',style: TextStyle(fontSize: 18),),
                            SizedBox(
                              width: 50,
                            ),
                             Text('Feb 2004',style: TextStyle(fontSize: 18),),
                        
                        
                        ],),
                        SizedBox(height: 20,),
                          Row(children: const [
                            Text('Avg responce time ',style: klightText,),
                            SizedBox(
                              width: 35,
                            ),
                             Text('Projects Completed',style: klightText,)

                        ],),
                         SizedBox(height: 10,),
                           Row(children: const [
                            Text('30 Minutes',style: TextStyle(fontSize: 18),),
                            SizedBox(
                              width: 100,
                            ),
                             Text('40 Projects',style: TextStyle(fontSize: 18),),
                        
                        SizedBox(height: 20,),
                        ],),
                         SizedBox( height: 20,),
                        Text('Languages',style: TextStyle(fontSize: 20),),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('nepali',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('Hindi',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('English ',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                          ],
                        ),
                       
                        SizedBox( height: 20,),
                        Text('Skill',style: TextStyle(fontSize: 20),),
                        SizedBox(
                          height: 20,),
                           Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('Logo Design',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('Web Design',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('Banner Design ',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                                
                          ],
                        ),
                        SizedBox(height: 20,),
                         Row(
                         
                          children: [
                            Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('Adobe illustrator',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                                SizedBox(width: 50,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200], 
                                    borderRadius: BorderRadius.circular(10), 
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text('Adobe Photoshop',
                                      style: TextStyle(fontSize: 18),),
                                      
                                      
                                  ),
                                ),
                               
                          ],
                        ),
                       
                       


                          

                        ]),  
                        
                      
                          
                        ),
                      ),
                          
            ),
          

        ],
        
         
      )
   
        ),
      ),
     
    
    );
  }
}
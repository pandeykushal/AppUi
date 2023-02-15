import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class subLanding extends StatefulWidget {
  const subLanding({super.key});

  @override
  State<subLanding> createState() => _subLandingState();
}

class _subLandingState extends State<subLanding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                
              ),
              color: Colors.white,
            ),
            child: Column(
              
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                     Icon(Icons.arrow_back_ios_new),
                     Icon(Icons.search),
                      
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(child: Image.network(
                        'https://scontent.fktm16-1.fna.fbcdn.net/v/t1.6435-9/78267354_2355131041483368_4415520856130715648_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=174925&_nc_ohc=SZw7PH0aps0AX8gvsM2&tn=2N9OFY7V3VL8-h9D&_nc_ht=scontent.fktm16-1.fna&oh=00_AfDkxsvq74WLkwEkxb1x1jandKORUJmh8zZZ8dQZjFU6Yw&oe=641432BA',
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        )  
                    ),
                    ),
                    Text('Graphics Design ')
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: const [
                   
                      CudtomListWidget(
                        icon: Icon(Icons.design_services),
                        text: Text('Logo Design')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.slow_motion_video),
                        text: Text('Motion Graphics')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.auto_graph),
                        text: Text('3D Animation')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.brush),
                        text: Text('Blender Animation')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.photo_size_select_large),
                        text: Text('Photo Editor')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.language),
                        text: Text('Prototyping')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.auto_graph),
                        text: Text('WireFraming')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.design_services),
                        text: Text('UX/UI')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.monochrome_photos),
                        text: Text('Photoshop')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.brush),
                        text: Text('Brochure Design')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.brush),
                        text: Text('Design')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.credit_card),
                        text: Text('Card Design')
                      ),
                      CudtomListWidget(
                        icon: Icon(Icons.design_services),
                        text: Text('Banner design')
                      ),
                      

                      
                    ],
                  ),
                )
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}

class CudtomListWidget extends StatelessWidget {
  const CudtomListWidget({required this .icon,required this.text});
  final Text text;
  final Icon icon;
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:icon,
      title:text,
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
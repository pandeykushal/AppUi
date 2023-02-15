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
                    children: [
                      Row(
                        children: [
                          Icon(Icons.brush),
                          Text('Logo Design ')
                        ],
                        
                      ),
                      CudtomListWidget(),
                      CudtomListWidget(),
                      CudtomListWidget(),
                      CudtomListWidget(),
                      CudtomListWidget(),
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
  const CudtomListWidget({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.brush),
      title: Text('Logo Design'),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
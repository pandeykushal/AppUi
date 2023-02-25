import 'package:flutter/material.dart';

import '../constannts/constannts.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Expanded(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'MYself',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.consectetuer adipiscing elit. Aenean commodo ligula eget dolor'),
          
          
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'From',
                style: klightText,
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                'Member Since',
                style: klightText,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                'Kathmandu Nepal',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                'Feb 2004',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Text(
                'Avg responce time ',
                style: klightText,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                'Projects Completed',
                style: klightText,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Text(
                '30 Minutes',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                '40 Projects',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Languages',
            style: TextStyle(fontSize: 20),
          ),
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
                  child: Text(
                    'nepali',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Hindi',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'English ',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Skill',
            style: TextStyle(fontSize: 20),
          ),
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
                  child: Text(
                    'Logo Design',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Web Design',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Banner Design ',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Adobe illustrator',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'Adobe Photoshop',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  
  }
}

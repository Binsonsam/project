import 'package:binz111/Explore.dart';
import 'package:binz111/MyTrips.dart';
import 'package:binz111/Profile.dart';
import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  List Pages=[
    Explore(),
    MyTrips(),
    Profile()
  ];

  int Select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Select,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: (index){
          setState(() {
            Select=index;
          });
          // Select=index;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.car_crash),label: 'My Trips'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
      ),
      body: Pages [Select],
    );
  }
}

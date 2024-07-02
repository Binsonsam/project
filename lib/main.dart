import 'package:binz111/Explore.dart';
import 'package:binz111/login.dart';
import 'package:binz111/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/tharr2.jpg'),
            fit: BoxFit.fill
          )
        ),
       child: Padding(
         padding: const EdgeInsets.only(top: 195.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 180),
               child: Container(
                 height: 45,
                 width: 94,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: Colors.orange
                 ),
                 child: TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (BuildContext )=>Second()));
                 },
                     child: Text('Skip >',style: TextStyle(color: Colors.white,fontSize: 24),)),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(bottom: 90),
               child: Container(
                 height: 50,
                 width: 210,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: Colors.orange
                 ),
                 child: TextButton(
                   onPressed: (){

                   },
                   child: Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 25),),
                 ),
               ),
             ),
           ],
         ),
       ),
    ),
    );
  }
}

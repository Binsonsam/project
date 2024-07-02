import 'package:binz111/Trips2.dart';
import 'package:binz111/login.dart';
import 'package:flutter/material.dart';

class MyTrips extends StatefulWidget {
  const MyTrips({super.key});

  @override
  State<MyTrips> createState() => _MyTripsState();
}

class _MyTripsState extends State<MyTrips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
        height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('lib/images/bk.jpg'),
    fit: BoxFit.fill
    )
    ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 380),
                child: Text('Login Now to see the Trips!',style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,wordSpacing: 1),),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('You need to login to your account \n               to view my trips',
                  style: TextStyle(fontSize: 21,wordSpacing: 1),),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 40,
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white
                  ),
                  child: Center(
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Login()));
                        },
                        child: Row(
                          children: [
                            Icon(Icons.person_outline),
                            Text('Login or Sign up')
                          ],
                        )
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Trips2()));
              }, icon: Icon(Icons.navigate_next))
            ],
          ),
        ),
    );
  }
}

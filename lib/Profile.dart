import 'package:binz111/MyTrips.dart';
import 'package:binz111/Settings.dart';
import 'package:binz111/Profile2.dart';
import 'package:binz111/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/bk.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 10),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('lib/images/pf.jpg'),
                ),
              ),
              Center(
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
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                            return Login();
                          }));
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
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 168,top: 19),
                          child: Text('Settings and activity',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            height: 250,
                            width: 380,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38,width: 4),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17,top: 9),
                                      child: Icon(Icons.location_on_outlined,
                                      size: 36,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14,top: 9),
                                      child: Text('Current city',style: TextStyle(fontSize: 26),),
                                    ),
                                  ],
                                ),
                                
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17,top: 12),
                                      child: Icon(Icons.car_crash,size: 36,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14,top: 12),
                                      child: Text('Total trips',style: TextStyle(fontSize: 26),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 121,top: 12),
                                      child: IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                                          return MyTrips();
                                        }));
                                      },
                                          icon:Icon(Icons.chevron_right,size: 36,) ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 17,top: 12),
                                      child: Icon(Icons.settings,
                                      size: 36,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16,top: 12),
                                      child: Text('Settings',style: TextStyle(fontSize: 26),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 140,top: 12),
                                      child: IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
                                          return Settings();
                                        }));
                                      },
                                          icon:Icon(Icons.chevron_right,size: 36,) ),
                                    )
                                  ],
                                ),

                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Profile2()));
                                }, icon: Icon(Icons.navigate_next))

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}

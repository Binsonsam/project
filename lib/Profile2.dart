import 'package:binz111/Edit.dart';
import 'package:binz111/Profile.dart';
import 'package:binz111/Settings2.dart';
import 'package:binz111/second.dart';
import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  const Profile2({super.key});

  @override
  State<Profile2> createState() => _Settings2State();
}

class _Settings2State extends State<Profile2> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('lib/images/pf.jpg'),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Edit()));
                    }, child: Text('EDIT',style: TextStyle(color: Colors.green,fontSize: 26,fontWeight: FontWeight.bold),)),
                  ],
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
                            child: Text('Preferences & Setting ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 280,
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
                                        padding: const EdgeInsets.only(left: 17,top: 12),
                                        child: Icon(Icons.favorite_border,
                                          size: 36,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16,top: 12),
                                        child: Text('Favourite Cars',style: TextStyle(fontSize: 26),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 12,left: 72),
                                        child: IconButton(onPressed: (){

                                        },
                                            icon:Icon(Icons.chevron_right,size: 36,) ),
                                      )
                                    ],
                                  ),

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
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Settings2()));
                                        },
                                            icon:Icon(Icons.chevron_right,size: 36,) ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),

                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: GestureDetector(
                        onTap: (){
                           showDialog(context: context, builder: (BuildContext context){
                            return AlertDialog(
                              backgroundColor: Colors.black54,
                              content: Text('Are you sure wamt to log out?',style: TextStyle(fontSize: 22,color: Colors.white),),
                              actions: [
                                Center(
                                  child: Column(
                                    children: [
                                      TextButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Second()));
                                      }, child: Text('Log Out',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.red,letterSpacing: 1),)),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,bottom: 4),
                                        child: TextButton(onPressed: (){
                                          Navigator.pop(context);
                                        }, child: Text('Cancel',style: TextStyle(fontSize: 20,color: Colors.white),)),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            );
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 380,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black38,width: 4),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.directions_walk,size: 38,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('Logout',style: TextStyle(fontSize: 26),),
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
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Trips2 extends StatefulWidget {
  const Trips2({super.key});

  @override
  State<Trips2> createState() => _Trips2State();
}

class _Trips2State extends State<Trips2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Get your first car now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 29,wordSpacing: 1),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Oh! Looks like you have not booked a  \n         trip with us yet, Get it Now.',style: TextStyle(fontSize: 21,wordSpacing: 1),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  height: 60,
                  width: 320,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white
                      ),
                      onPressed: (){

                      },
                      child: Text('Search NOW',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 68,
        backgroundColor: Colors.white,
        leading:  IconButton(
            color: Colors.white,
            splashColor: Colors.white,
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,)
        ),
        title: Text('My Profile',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold,letterSpacing: 1),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50,top: 5),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('lib/images/pf.jpg'),
            ),
            TextButton(onPressed: (){

            },
                child: Text('ADD PHOTO',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                height: 77,
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 77,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
              ),
            ),
            SizedBox(
              height: 77,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 320,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      onPrimary: Colors.white
                  ),
                  onPressed: (){

                  },
                  child: Text('UPDATE PROFILE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 1),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}

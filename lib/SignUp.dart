import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/images/bkk2.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 340),
                child: IconButton(
                  color: Colors.white,
                    splashColor: Colors.white,
                    onPressed: (){
                    Navigator.pop(context);
                },
                    icon: Icon(Icons.arrow_back)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190,right: 20),
                child: Text('SignUp Page',style: TextStyle(fontSize: 22,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 73,
                  width: 310,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 73,
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Phone number',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 73,
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 73,
                width: 310,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey
                ),
                child: ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('Signup',style: TextStyle(color: Colors.white,fontSize: 20),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

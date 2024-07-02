import 'package:binz111/SignUp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                child: Text('Welcome to \n   Demo name',style: TextStyle(fontSize: 22,color: Colors.white),),
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
                    child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55,top: 30),
                child: Row(
                  children: [
                    Text('Already have an account?',style: TextStyle(color: Colors.white,fontSize: 20),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Signup()));
                    },
                        child: Text('SignUp!',style: TextStyle(fontSize: 20),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

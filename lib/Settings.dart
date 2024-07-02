import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  final location =[
    'English','Hindi','Malayalam','Tamil'
  ];
  String ?selected;

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
        title: Text('Settings',style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.library_books),
                Text('Change language',style: TextStyle(fontSize: 16),),
                IconButton(
                    onPressed: (){
                  DropdownButtonFormField(
                      items: location.map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,)).toList(),
                      onChanged: (value){
                        setState(() {
                          selected = value!;
                          print(selected);
                        });
                      });
                }, icon: Icon(Icons.chevron_right)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 49),
                  child: Icon(Icons.lock),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42),
                  child: Text('App permissions',style: TextStyle(fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: IconButton(onPressed: (){

                  }, icon: Icon(Icons.chevron_right)),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}

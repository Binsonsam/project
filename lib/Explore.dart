import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  final location =[
    'Bangalore','Pune','Hyderabad','Chennai','Kochi','Mangalore','Goa','Thrissur','Pathanamthitta','Mysore'
  ];
  String ?selected;

  // DateTime today = DateTime.now();
  // onDayselected(selectedDay,focusedDay){
  //   setState(() {
  //     today=selectedDay;
  //   });
  // }

  DateTime? _selectedDate;

  Future<void>selectedDate(BuildContext context)async{
    final DateTime? picked = await showDatePicker(

        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
      lastDate: DateTime.utc(2030,12,12)

    );
    if(picked != null && picked != _selectedDate){
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  bool isCkecked = false;

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('20000+ Top Rated Cars!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Container(
                  height: 360,
                  width: 355,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 101,top: 17),
                        child: SizedBox(
                          height: 60,
                          width: 200,
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Select your city'
                            ),
                              items: location.map((e) => DropdownMenuItem(
                              child: Text(e),
                          value: e,)).toList(),
                              onChanged: (value){
                            setState(() {
                              selected = value!;
                              print(selected);
                            });
                              }),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          height: 57,
                          width: 310,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for your location',
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.my_location),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              )
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                selectedDate(context);
                              },
                              child: Container(
                                height: 60,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black26,width: 2)
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_month_outlined),
                                    Text('Trip Start',style: TextStyle(fontSize: 18),)
                                  ],
                                ),

                                // child: TableCalendar(
                                //   locale: "en_US",
                                //   rowHeight: 60,
                                //   headerStyle: HeaderStyle(
                                //       formatButtonVisible: false,titleCentered: true
                                //   ),
                                //   shouldFillViewport: true,
                                //   pageJumpingEnabled: true,
                                //   weekendDays: [DateTime.saturday, DateTime.sunday],
                                //   selectedDayPredicate: (day)=> isSameDay(day, today),
                                //   focusedDay: today,
                                //   firstDay: DateTime.utc(2024, 01, 01),
                                //   lastDay: DateTime.utc(2034, 12, 12),
                                //   onDaySelected: (selectedDay, focusedDay) {
                                //     setState(() {
                                //       today = selectedDay;
                                //     });
                                //   },
                                // ),

                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                selectedDate(context);
                              },
                              child: Container(
                                height: 60,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black26,width: 2)
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.calendar_month_outlined),
                                    Text('Trip End',style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 17,top: 6),
                        child: Row(
                          children: [
                            Checkbox(
                                value: isCkecked, onChanged: (bool? value){
                                  setState(() {
                                    isCkecked = value!;
                                  });
                            }),
                            Text('Delivery & Pick-up from anywhere',style: TextStyle(fontSize: 16,wordSpacing: 1),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
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
                              child: Text('Search CAR',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

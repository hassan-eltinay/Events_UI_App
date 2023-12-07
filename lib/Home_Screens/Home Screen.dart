import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Home_Screens/Events/Birthday_Events.dart';
import 'package:myapp/Home_Screens/Events/Golf_Events.dart';
import 'package:myapp/Home_Screens/Events/Meetup_Events.dart';
import 'package:myapp/Home_Screens/Events/Music_Events.dart';

import 'HomeScreenBackground.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> myListCards = [Music_Events(),Meetup_Events(),Golf_Events(),Birthday_Events()];
  List<Widget> myList = [
    // All
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.search,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'All',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    //Music
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.music_note,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Music',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    //Meetup
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.location_on,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Meetup',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    //Golf
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.golf_course,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Golf',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    //Birthday
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.cake,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Birthday',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomeScreenBackground(screenHeight: MediaQuery.of(context).size.height,),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


              //Headers
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: <Widget>[
                  Text(
                    'LOCAL EVENTS', style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),

                  ),
                  Spacer(),
                  Icon(Icons.person_outline,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text("What's Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white ),),
            ),




              Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child:
                      SizedBox(
                          height: 100,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: myList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });

                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 9),
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(16)),
                                      border: Border.all(
                                        color: selectedIndex == index
                                            ? Colors.deepOrange
                                            : Colors.white70,
                                        width: 3,
                                      ),
                                      color: selectedIndex == index
                                          ? Colors.white54
                                          : Colors
                                              .deepOrange, //now suppose selectedIndex and index from this builder is same then it will show the selected as green and others in red color
                                    ),
                                    child: myList[index], //here you can show the child or data from the list
                                  ));
                            },
                          ))),

                                myListCards[selectedIndex]

                                      ],
                                    ),
                                  )
                              ), ])


                );
            }
          }



































class All_SelectedTheme extends StatelessWidget {
  const All_SelectedTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          border: Border.all(
            color: Colors.white70,
            width: 3,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.search,
            size: 40,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'All',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

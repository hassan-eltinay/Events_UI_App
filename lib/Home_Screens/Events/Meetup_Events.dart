import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Home_Screens/Events/Music_Events.dart';

import '../HomeScreenBackground.dart';



class Meetup_Events extends StatefulWidget {
  const Meetup_Events({Key? key}) : super(key: key);

  @override
  State<Meetup_Events> createState() => _Meetup_EventsState();
}

class _Meetup_EventsState extends State<Meetup_Events> {

  @override
  Widget build(BuildContext context) {
    return

      //Meetup Card
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
            color: Colors.white,
            elevation: 4,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                  child: Image.asset('assets/images/meetup.jpg'),
                ),

                SizedBox(height: 2),

                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 10, 20),
                    child:Column(
                        children: <Widget>[
                          Row(
                              children: <Widget>[
                                Text('Manager Meeting', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                Spacer(),
                                Icon(Icons.location_on),
                                Text('City Hall', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                              ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.timer),
                                Text('9am', style: TextStyle(fontSize: 20)
                                )
                              ],
                            ),
                          ),
                        ])
                )

              ],
            ),
          )

      );
  }
}

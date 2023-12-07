import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Home_Screens/Events/Music_Events.dart';

import '../HomeScreenBackground.dart';



class Birthday_Events extends StatefulWidget {
  const Birthday_Events({Key? key}) : super(key: key);

  @override
  State<Birthday_Events> createState() => _Birthday_EventsState();
}

class _Birthday_EventsState extends State<Birthday_Events> {

  @override
  Widget build(BuildContext context) {
    return

      //Music Card or Cards
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
                  child: Image.asset('assets/images/birthday.jpg'),
                ),

                SizedBox(height: 2),

                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 10, 20),
                    child:Column(
                        children: <Widget>[
                          Row(
                              children: <Widget>[
                                Text('Backstreet Boys', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                Spacer(),
                                Icon(Icons.location_on),
                                Text('School', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                              ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.timer),
                                Text('8pm', style: TextStyle(fontSize: 20)
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

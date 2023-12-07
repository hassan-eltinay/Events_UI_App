import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Home_Screens/Events/Music_Events.dart';

import '../HomeScreenBackground.dart';



class Golf_Events extends StatefulWidget {
  const Golf_Events({Key? key}) : super(key: key);

  @override
  State<Golf_Events> createState() => _Golf_EventsState();
}

class _Golf_EventsState extends State<Golf_Events> {

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
                  child: Image.asset('assets/images/golf.jpg'),
                ),

                SizedBox(height: 2),

                Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 10, 20),
                    child:Column(
                        children: <Widget>[
                          Row(
                              children: <Widget>[
                                Text('Championship Match', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                Spacer(),
                                Icon(Icons.location_on),
                                Flexible(flex: 5,child:Text('Allianz Stadium', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),

                              ]),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.timer),
                                Text('10am', style: TextStyle(fontSize: 20)
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

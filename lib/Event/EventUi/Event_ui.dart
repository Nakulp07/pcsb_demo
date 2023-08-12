import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcsb_demo/Event/EventUi/NonTech_Event_ui.dart';
import 'package:pcsb_demo/Event/EventUi/Tech_Event_ui.dart';

class Eventpage extends StatefulWidget {
  const Eventpage({Key? key}) : super(key: key);

  @override
  State<Eventpage> createState() => _EventpageState();
}

class _EventpageState extends State<Eventpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Events'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                print('clicked on tech events tab ');
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => NonTechEvent())));
              },
              child: Container(
                height: 175,
                width: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/circuits-blue-red-gradient-digital-background_23-2148821701.jpg?w=1060&t=st=1691775249~exp=1691775849~hmac=269823c11a21219b3e9d02678740ddc99600308ebabc003dd67fa2205c0fbc42'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo,
                ),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Center(child: Text('Technical'))),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                print('clicked on non tech events tab ');
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => TechEvent())));
              },
              child: Container(
                height: 175,
                width: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo,
                ),
                child: Center(child: Text(' vedant Technical')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

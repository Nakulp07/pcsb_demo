import 'dart:ui';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcsb_demo/features/Event/ui/NonTech_Event_ui.dart';
import 'package:pcsb_demo/features/Event/ui/Xenia_ui.dart';

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
        title: Text('Events'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF26252e),
              Color(0xFF1e1e22),
              Color(0xFF1a1a1e),

            ], // Define your gradient colors
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 250,
              child: GestureDetector(
                onTap: () {
                  print('clicked on tech events tab ');
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => XeniaEvent())));
                },
                child: Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.pictcsi.com/assets/images/xenia.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                    'Xenia',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
                ),
              ),
            ),
            Container(
              height: 250,
              child: GestureDetector(
                onTap: () {
                  print('clicked on non tech events tab ');
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => XeniaEvent())));
                },
                child: Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://drive.google.com/uc?export=view&id=1j8GKWFBp478GG1KtL3uhqRricA64fmP-'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                    'Xeniaverse',
                    style: TextStyle(fontSize: 30),
                  )),
                ),
              ),
            ),
            Container(
              height: 250,
              child: GestureDetector(
                onTap: () {
                  print('clicked on non tech events tab ');
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => XeniaEvent())));
                },
                child: Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/old-fashioned-flat-lay-with-letters-writing-accessories_155003-3599.jpg?w=1060&t=st=1692025680~exp=1692026280~hmac=b17a91404d8caba100d8440b32ca504627b92b4868d30786e1c42f7823ee0bdb'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: Text(
                    'Snaphunt',
                    style: TextStyle(fontSize: 30),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

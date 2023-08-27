import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pcsb_demo/features/Event/ui/event_ui.dart';
import 'package:pcsb_demo/features/home/ui/card_ui.dart';

import '../bloc/home_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final HomeBloc homeBloc = HomeBloc();
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        // TODO: implement listener
        if (state is NavigatetoEventpageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Eventpage())));
        }
      },
      builder: (context, state) {
        var _currentIndex = 0;
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: Color(0x44000000),
          appBar: AppBar(
            // backgroundColor: Color(0x44000000),
            forceMaterialTransparency: true,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                // Scaffold.of(context).openDrawer();
                _scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.sort,
                size: 35,
                color: Colors.white,
              ),
            ),
            actions: [
              Expanded(
                child: Container(),
              ),
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                  size: 35.0,
                ),
                onPressed: () {
                  print('User profile pressed');
                },
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          drawer: Drawer(
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'PCSB',
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Social Handels',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'About Us',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Feedback',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Log out',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                Text(
                  'Hello David !!',
                  style: (TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'Borel',
                  )),
                ),
                Text(
                  'Welcome back !',
                  style: (TextStyle(
                    color: Colors.white,
                    // fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                    fontFamily: 'Borel',
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Color.fromARGB(255, 75, 75, 75),
                            width: 2.0)),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        autoPlay: true,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: Color(0x44000000),
                                ),
                                child: Center(
                                  child: Text(
                                    'Notification $i',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ));
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Function_Card(
                                card_color: Color.fromARGB(255, 215, 215, 233),
                                card_icon: Icons.photo_library,
                                card_name: 'Gallery',
                                homeBloc: homeBloc,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Function_Card(
                                card_color: Color.fromARGB(255, 176, 210, 207),
                                card_icon: Icons.groups_2_outlined,
                                card_name: 'Our Team',
                                homeBloc: homeBloc,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Function_Card(
                                card_color:
                                    // Color.fromARGB(255, 100, 149, 237),
                                    Color.fromARGB(255, 211, 206, 179),
                                card_icon: Icons.calendar_month,
                                card_name: 'Calender',
                                homeBloc: homeBloc,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.all(7),
                              child: Function_Card(
                                card_color: Color.fromARGB(255, 180, 217, 240),
                                card_icon: Icons.event,
                                card_name: 'Events',
                                homeBloc: homeBloc,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

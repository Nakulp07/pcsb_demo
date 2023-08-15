import 'package:flutter/material.dart';
import 'card_ui.dart';

class TechEvent extends StatefulWidget {
  const TechEvent({super.key});

  @override
  State<TechEvent> createState() => _TechEventState();
}

class _TechEventState extends State<TechEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x44000000),
        appBar: AppBar(
          backgroundColor: Color(0x44000000),
          elevation: 0,
          title: Text('Technical Event'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 185, 191, 213),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Center(
                              child: Xen_card(
                                title: 'Ninja Coding',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(224, 139, 209, 197),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Center(
                              child: Xen_card(
                                title: 'Codestrike',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(224, 139, 209, 197),
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10),
                            child: Center(
                              child: Xen_card(
                                title: 'Design Maestro',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 185, 191, 213),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Center(
                              child: Xen_card(
                                title: 'MineCraft Build Battles',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 185, 191, 213),
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10),
                            child: Center(
                              child: Xen_card(
                                title: 'Xenathon (Mini Hackathon)',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(224, 139, 209, 197),
                            ),
                            margin: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Center(
                              child: Xen_card(
                                title: 'Circuitron',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(224, 139, 209, 197),
                            ),
                            margin:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            child: Center(
                              child: Xen_card(
                                title: 'Innoveiren (Project Presentation)',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 185, 191, 213),
                            ),
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            child: Center(
                              child: Xen_card(
                                title: 'Data Cup',
                                description:
                                    'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

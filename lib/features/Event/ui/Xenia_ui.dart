import 'package:flutter/material.dart';
import 'package:pcsb_demo/data/xenia_events_data.dart';
import 'package:pcsb_demo/features/Event/models/event_data_model.dart';
import 'package:pcsb_demo/features/home/ui/card_ui.dart';
import 'card_ui.dart';
import 'package:pcsb_demo/features/Event/ui/event_tile_widget.dart';

class XeniaEvent extends StatefulWidget {
  const XeniaEvent({super.key});

  @override
  State<XeniaEvent> createState() => _XeniaEventState();
}

class _XeniaEventState extends State<XeniaEvent> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EventListPage(),
    );
  }
}

class EventListPage extends StatefulWidget {
  @override
  _EventListPageState createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  // List<Widget> eventContainers = [];
  // final XeniaTechEventsData techEventsData = XeniaTechEventsData();
  // final XeniaNonTechEventsData nonTechEventsData = XeniaNonTechEventsData();

  String current_tab = 'tech';

  void _buildXeniaTechEventContainers() {
    setState(() {
      current_tab = 'tech';
      // eventContainers =
      //     XeniaTechEventsData.TechEvents.map((event) => Eventtile(title: XeniaNonTechEventsData.NonTechEvents[0].title,)).toList();
    });
  }

  void _buildXeniaNonTechEventContainers() {
    current_tab = 'non-tech';
    // setState(() {
    //   eventContainers =
    //       XeniaNonTechEventsData.NonTechEvents.map((event) => Eventtile(title: XeniaNonTechEventsData.NonTechEvents[0].title,)).toList();
    // });
  }

  Color _currentColor = Colors.blue;

  bool isTechpressed = false;
  bool isNonTechpressed = false;

  void toggleTech() {
    setState(() {
      isTechpressed = true;
      isNonTechpressed = false;
    });
  }

  void toggleNontech() {
    setState(() {
      isNonTechpressed = true;
      isTechpressed = false;
    });
  }

  void initState() {
    super.initState();
    toggleTech();
    _buildXeniaTechEventContainers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Xenia',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Color(0xFF26252e),
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    toggleTech();
                    _buildXeniaTechEventContainers();
                  }, // Match the BorderRadius
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isTechpressed
                          ? Color.fromRGBO(207, 176, 242, 0.9)
                          : Color.fromRGBO(42, 45, 52, 0.9),
                    ),
                    width: 160,
                    height: 40,
                    child: Center(
                        child: Text('Tech Event',
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    toggleNontech();
                    _buildXeniaNonTechEventContainers();
                  },
                  borderRadius:
                      BorderRadius.circular(20), // Match the BorderRadius
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isNonTechpressed
                          ? Color.fromRGBO(207, 176, 242, 0.9)
                          : Color.fromRGBO(42, 45, 52, 0.9),
                    ),
                    // color: isNonTechpressed? Colors.green : Colors.blue,
                    width: 160,
                    height: 40,
                    child: Center(
                        child: Text('Non-Tech Event',
                            style: TextStyle(color: Colors.white))),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: XeniaNonTechEventsData.NonTechEvents.length,
              itemBuilder: (context, index) {
                if (current_tab == 'tech')
                  return Eventtile(
                      title: XeniaTechEventsData.TechEvents[index].title,
                      description:
                          XeniaTechEventsData.TechEvents[index].category);
                else if (current_tab == 'non-tech') {
                  return Eventtile(
                    title: XeniaNonTechEventsData.NonTechEvents[index].title,
                    description:
                        XeniaNonTechEventsData.NonTechEvents[index].category,
                  );
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}











// old ui  code
// @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       backgroundColor: Color(0x44000000),
  //       appBar: AppBar(
  //         backgroundColor: Color(0x44000000),
  //         elevation: 0,
  //         title: Text('Xenia'),
  //       ),
  //       body: Column(
  //         children: [
  //           Row(
  //             children: <Widget>[
  //               Expanded(
  //                 child: ElevatedButton(
  //                     onPressed: () {
  //                       setState(() {
  //                         abc = 'Tech Events';
  //                         print(abc);
  //                       });
  //                     },
  //                     child: Text('Tech Events')),
  //               ),
  //               Expanded(
  //                 child: ElevatedButton(
  //                     onPressed: () {
  //                       setState(() {
  //                         abc = 'Non-Tech Events';
  //                         print(abc);
  //                       });
  //                     },
  //                     child: Text('Non-Tech Events')),
  //               ),
  //             ],
  //           ),
  //           Expanded(
  //             child: Row(
  //               children: [
  //                 Expanded(
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         flex: 1,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(255, 185, 191, 213),
  //                           ),
  //                           margin: EdgeInsets.only(
  //                             left: 10,
  //                             top: 10,
  //                           ),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: abc,
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       Expanded(
  //                         flex: 2,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(224, 139, 209, 197),
  //                           ),
  //                           margin: EdgeInsets.only(
  //                             left: 10,
  //                             top: 10,
  //                           ),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'Codestrike',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Expanded(
  //             child: Row(
  //               children: [
  //                 Expanded(
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         flex: 2,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(224, 139, 209, 197),
  //                           ),
  //                           margin: EdgeInsets.only(left: 10, top: 10),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'Design Maestro',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       Expanded(
  //                         flex: 1,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(255, 185, 191, 213),
  //                           ),
  //                           margin: EdgeInsets.only(
  //                             left: 10,
  //                             top: 10,
  //                           ),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'MineCraft Build Battles',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Expanded(
  //             child: Row(
  //               children: [
  //                 Expanded(
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         flex: 1,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(255, 185, 191, 213),
  //                           ),
  //                           margin: EdgeInsets.only(left: 10, top: 10),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'Xenathon (Mini Hackathon)',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       Expanded(
  //                         flex: 2,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(224, 139, 209, 197),
  //                           ),
  //                           margin: EdgeInsets.only(
  //                             left: 10,
  //                             top: 10,
  //                           ),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'Circuitron',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //           Expanded(
  //             child: Row(
  //               children: [
  //                 Expanded(
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         flex: 2,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(224, 139, 209, 197),
  //                           ),
  //                           margin:
  //                               EdgeInsets.only(left: 10, top: 10, bottom: 10),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'Innoveiren (Project Presentation)',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       Expanded(
  //                         flex: 1,
  //                         child: Container(
  //                           decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Color.fromARGB(255, 185, 191, 213),
  //                           ),
  //                           padding: EdgeInsets.all(10),
  //                           margin: EdgeInsets.all(10),
  //                           child: Center(
  //                             child: Xen_card(
  //                               title: 'Data Cup',
  //                               description:
  //                                   'Immerse yourself in cutting-edge innovation at our colleges dynamic tech event, where visionary speakers and hands-on workshops converge to explore the limitless horizons of tech',
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ],
  //       ));
  // }
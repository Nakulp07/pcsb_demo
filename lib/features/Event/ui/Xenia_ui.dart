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
  List<Widget> eventContainers = [];
  final XeniaTechEventsData techEventsData = XeniaTechEventsData();
  final XeniaNonTechEventsData nonTechEventsData = XeniaNonTechEventsData();

  void _buildXeniaTechEventContainers() {
    setState(() {
      eventContainers =
          techEventsData.TechEvents.map((event) => Eventtile()).toList();
    });
  }

  void _buildXeniaNonTechEventContainers() {
    setState(() {
      eventContainers =
          nonTechEventsData.NonTechEvents.map((event) => Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 5),
                color: Colors.green,
                child: Text(event.title, style: TextStyle(color: Colors.white)),
              )).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xenia')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _buildXeniaTechEventContainers,
                child: Text('Tech Events'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: _buildXeniaNonTechEventContainers,
                child: Text('Non-Tech Events'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
              child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: eventContainers,
          )

              // ListView.builder(
              //   itemCount: eventContainers.length,
              //   itemBuilder: (context, index) {
              //     return eventContainers[index];
              //   },
              // ),
              ),
        ],
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
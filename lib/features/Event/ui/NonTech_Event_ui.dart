// import 'package:flutter/material.dart';
// import 'card_ui.dart';

// class NonTechEvent extends StatefulWidget {
//   const NonTechEvent({super.key});

//   @override
//   State<NonTechEvent> createState() => _NonTechEventState();
// }

// class _NonTechEventState extends State<NonTechEvent> {
//   // Xen_card xen_card = new Xen_card();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // backgroundColor: Color(0x44000000),
//         // appBar: AppBar(
//         //   // backgroundColor: Color(0x44000000),
//         //   elevation: 0,
//         //   title: Text('Non-Technical Event'),
//         // ),
//         body: Container(
//       // color: Color(0x44000000),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color(0xFF000433),
//             Color(0xFF012d6c),
//             Color(0xFF0159b1)
//           ], // Define your gradient colors
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Column(
//         children: [
//           Expanded(
//               child: Container(
//             child: Text(
//               'Non-Technical Event',
//               style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
//             ),
//             padding: EdgeInsets.only(top: 40, left: 10),
//           )),
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
//                             color: Color(0xFF012d6c),
//                           ),
//                           margin: EdgeInsets.only(
//                             left: 10,
//                             top: 10,
//                           ),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Campus To Corporate',
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
//                             color: Color(0xFF0159b1),
//                           ),
//                           margin: EdgeInsets.only(
//                             left: 10,
//                             top: 10,
//                           ),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Snap Hunt',
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
//                             color: Color(0xFF0159b1),
//                           ),
//                           margin: EdgeInsets.only(left: 10, top: 10),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'The Gift of Gab',
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
//                             color: Color(0xFF012d6c),
//                           ),
//                           margin: EdgeInsets.only(
//                             left: 10,
//                             top: 10,
//                           ),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Game Zone',
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
//                             color: Color(0xFF012d6c),
//                           ),
//                           margin: EdgeInsets.only(left: 10, top: 10),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Dream Team',
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
//                             color: Color(0xFF0159b1),
//                           ),
//                           margin: EdgeInsets.only(
//                             left: 10,
//                             top: 10,
//                           ),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Shark Tank',
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
//                             color: Color(0xFF0159b1),
//                           ),
//                           margin:
//                               EdgeInsets.only(left: 10, top: 10, bottom: 10),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Couch Potato',
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
//                             color: Color(0xFF012d6c),
//                           ),
//                           padding: EdgeInsets.all(10),
//                           margin: EdgeInsets.all(10),
//                           child: Center(
//                             child: Xen_card(
//                               title: 'Xe-Natus',
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
//       ),
//     ));
//   }
// }

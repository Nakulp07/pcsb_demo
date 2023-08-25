import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcsb_demo/data/xenia_events_data.dart';
import 'package:pcsb_demo/features/Event/models/event_data_model.dart';

class Eventtile extends StatefulWidget {
  const Eventtile({Key? key}) : super(key: key);

  @override
  State<Eventtile> createState() => _EventtileState();
}

class _EventtileState extends State<Eventtile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 200,
        width: 50,
        child: Center(
            child: Text('Xenia event', style: TextStyle(color: Colors.white))),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromRGBO(42, 45, 52, 0.9),
          // Colors.ARGB(42,45,52,50),
        ),
      ),
    );
  }
}

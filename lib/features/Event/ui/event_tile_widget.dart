import 'package:flutter/cupertino.dart';

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
        margin: EdgeInsets.all(20),
        height: 200,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            Color(0xff23262e),Color(0xFF212025),Color(0xFF1a1a1e)

          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),

    );
  }
}

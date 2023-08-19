import 'package:flutter/material.dart';
import 'package:xen_popup_card/xen_card.dart';

// custom button
// ignore
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, this.color})
      : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        // color: const Color(0xff6200ee),

        color: Color.fromARGB(255, 207, 212, 234),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Center(
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ),
      ),
    );
  }
}

class Xen_card extends StatefulWidget {
  const Xen_card({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  State<Xen_card> createState() => _Xen_cardState(title, description);
}

class _Xen_cardState extends State<Xen_card> {
  final String title;
  final String description;

  XenCardGutter gutter = const XenCardGutter(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: CustomButton(text: "close"),
    ),
  );
  // APP BAR
  //
  // [XenCardAppBar]
  XenCardAppBar appBar = const XenCardAppBar(
    child: Text(
      "app bar",
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
    ),
    // To remove shadow from appbar
    shadow: BoxShadow(color: Colors.transparent),
  );

  _Xen_cardState(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog(
        useSafeArea: true,
        context: context,
        builder: (builder) => XenPopupCard(
          cardBgColor: Color.fromARGB(255, 207, 212, 234),
          appBar: XenCardAppBar(
            color: Color.fromARGB(255, 207, 212, 234),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.black),
            ),
            // To remove shadow from appbar
            shadow: BoxShadow(color: Colors.transparent),
          ),
          // gutter: gutter,
          body: ListView(
            children: [
              Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Borel',
                ),
              ),
            ],
          ),
        ),
      ),
      child: Text(title ?? "abc",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )),
    );
  }
}

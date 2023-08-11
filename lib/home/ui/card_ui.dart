import 'package:flutter/material.dart';

class Function_Card extends StatelessWidget {
  Function_Card(
      {super.key,
      required this.card_color,
      required this.card_icon,
      required this.card_name,
      required this.Height});

  final Color card_color;
  final IconData card_icon;
  final String card_name;
  final double Height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle onTap here
      },
      child: Container(
        width: 180,
        height: Height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: card_color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              card_icon,
              color: Colors.black,
              size: 40,
            ),
            SizedBox(height: 10),
            Text(
              '$card_name',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

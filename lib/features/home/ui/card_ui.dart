import 'package:flutter/material.dart';
import 'package:pcsb_demo/features/home/bloc/home_bloc.dart';

class Function_Card extends StatelessWidget {
  final HomeBloc homeBloc;
  Function_Card({
    super.key,
    required this.card_color,
    required this.card_icon,
    required this.card_name,
    required this.homeBloc,
  });

  final Color card_color;
  final IconData card_icon;
  final String card_name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle onTap here
        if (card_name == 'Events') {
          homeBloc.add(HomeEventsNavigationEvent());
        } else if (card_name == 'Calender') {
          homeBloc.add(HomeCalenderNavigationEvent());
        } else if (card_name == 'Our Team') {
          homeBloc.add(HomeOurTeamNavigationEvent());
        } else {
          homeBloc.add(HomeGalleryNavigationEvent());
        }
      },
      child: Container(
        width: 180,
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

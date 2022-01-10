import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final Widget cardChild;
  final double containerHeight;
  final EdgeInsets containerMargin;
  final Color colour;

  Dashboard(
      {this.cardChild,
      this.containerHeight,
      this.containerMargin,
      this.colour,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: containerHeight,
      margin: containerMargin,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: -5,
            offset: Offset(-5, -5),
            blurRadius: 30,
          ),
          BoxShadow(
              color: Colors.blue[900].withOpacity(0.2),
              spreadRadius: 2,
              offset: Offset(7, 7),
              blurRadius: 20),
        ],
      ),
    );
  }
}

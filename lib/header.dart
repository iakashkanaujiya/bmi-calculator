import 'package:flutter/material.dart';


class Header extends StatelessWidget {

  final Widget buttonChild;

  Header({this.buttonChild});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: -5,
                offset: Offset(-5, -5),
                blurRadius: 30,
              ),
              BoxShadow(
                  color: Colors.blue[900].withOpacity(.2),
                  spreadRadius: 2,
                  offset: Offset(7, 7),
                  blurRadius: 20),
            ],
          ),
          child: buttonChild,
        ),
        Container(
          height: 40.0,
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: -5,
                offset: Offset(-5, -5),
                blurRadius: 30,
              ),
              BoxShadow(
                  color: Colors.blue[900].withOpacity(.2),
                  spreadRadius: 2,
                  offset: Offset(7, 7),
                  blurRadius: 20),
            ],
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'BMI Calculator',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

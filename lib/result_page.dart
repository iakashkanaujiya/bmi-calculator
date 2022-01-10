import 'package:flutter/material.dart';
import 'header.dart';
import 'dashboard.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ResultPage extends StatelessWidget {

  final double score;
  ResultPage({@required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Header(
                buttonChild: GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child: SleekCircularSlider(
                          max: 110.0,
                          min: 10.0,
                          initialValue: score,
                          appearance: CircularSliderAppearance(
                            customColors: CustomSliderColors(
                              trackColor: Colors.black,
                              progressBarColor: Colors.orange,
                            ),
                            infoProperties: InfoProperties(
                              modifier: (double value){
                                final roundedValue = value.round();
                                return '$roundedValue';
                              }
                            ),
                            size: 200.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Dashboard(
                containerHeight: 60.0,
                colour: Colors.white,
                cardChild: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: GestureDetector(
                          child: Text(
                            'Re-Calculate',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

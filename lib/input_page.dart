import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dashboard.dart';
import 'header.dart';
import 'slider.dart';
import 'result_page.dart';
import 'result_brain.dart';

const color = Color(0xFFFFFFFF);
const waTextStyle = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

class BmiApp extends StatefulWidget {
  @override
  _BmiAppState createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  int height = 160;
  double weight = 60;
  int age;

  ResultBrain resultBrain = ResultBrain();

  Color maleTextColor = Colors.orange;
  Color femaleTextColor = Colors.black;

  IconData icon = FontAwesomeIcons.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Header(buttonChild: Icon(icon)),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Dashboard(
                        colour: color,
                        containerHeight: 50.0,
                        cardChild: Center(
                          child: GestureDetector(
                            child: Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: maleTextColor),
                            ),
                            onTap: () {
                              setState(() {
                                icon = FontAwesomeIcons.male;
                                maleTextColor = Colors.orange;
                                femaleTextColor = Colors.black;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Expanded(
                      child: Dashboard(
                        colour: color,
                        containerHeight: 50.0,
                        cardChild: Center(
                          child: GestureDetector(
                            child: Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: femaleTextColor),
                            ),
                            onTap: () {
                              setState(() {
                                icon = FontAwesomeIcons.female;
                                femaleTextColor = Colors.orange;
                                maleTextColor = Colors.black;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Dashboard(
                        colour: color,
                        cardChild: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: HSlider(
                              height: height,
                              onChange: (val) => setState(() => height = val),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                              child: Dashboard(
                                colour: color,
                                cardChild: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    WASlider(
                                      minvalue: 40.0,
                                      maxvalue: 150.0,
                                      unit: 'Kg',
                                      startValue: 60.0,
                                      onChange: (val) {
                                        weight = val;
                                        print(weight);
                                      },
                                    ),
                                    Text('Weight', style: waTextStyle)
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Expanded(
                              child: Dashboard(
                                colour: Color(0xFFFFFFFF),
                                cardChild: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    WASlider(
                                        onChange: (val) {},
                                        minvalue: 20.0,
                                        maxvalue: 80.0,
                                        unit: 'Years',
                                        startValue: 30.0),
                                    Text('Age', style: waTextStyle)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Dashboard(
                containerHeight: 60.0,
                containerMargin: EdgeInsets.only(top: 20.0),
                colour: Colors.white,
                cardChild: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin: EdgeInsets.all(4),
                      child: Center(
                        child: GestureDetector(
                          child: Text(
                            'Calculate',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultPage(
                                    score: resultBrain.calculateBMI(
                                        height.toDouble(), weight)),
                              ),
                            );
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

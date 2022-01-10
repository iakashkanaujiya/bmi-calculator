import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:flutter/material.dart';
import 'package:height_slider/height_slider.dart';

class WASlider extends StatelessWidget {
  final double minvalue;
  final double maxvalue;
  final String unit;
  final double startValue;
  final OnChange onChange;

  WASlider(
      {this.minvalue,
      this.maxvalue,
      this.unit,
      this.startValue,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      min: minvalue,
      max: maxvalue,
      initialValue: startValue,
      appearance: CircularSliderAppearance(
        infoProperties: InfoProperties(bottomLabelText: unit, modifier: (double value) {
          final roundedValue = value.toStringAsFixed(1);
          return roundedValue;
        }),
        size: 120.0,
        customColors: CustomSliderColors(
          trackColor: Colors.black,
          progressBarColor: Colors.orange,
        ),
      ),
      onChange: onChange,
    );
  }
}

class HSlider extends StatelessWidget {
  final int height;
  final Function onChange;

  HSlider({this.height, this.onChange});
  @override
  Widget build(BuildContext context) {
    return HeightSlider(
      numberLineColor: Colors.black,
      currentHeightTextColor: Colors.orange,
      primaryColor: Colors.orange,
      sliderCircleColor: Colors.orange,
      minHeight: 120,
      maxHeight: 200,
      height: height,
      onChange: onChange,
    );
  }
}

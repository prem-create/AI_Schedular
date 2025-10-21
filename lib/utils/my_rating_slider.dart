import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';

class MyRatingSlider extends StatefulWidget {
  const MyRatingSlider({super.key});

  @override
  State<MyRatingSlider> createState() => _MyRatingSliderState();
}

class _MyRatingSliderState extends State<MyRatingSlider> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInterFamily(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          text: 'Optimization Level (Current: $rating%)',
          textHeight: 1,
        ),
        Slider(
          value: rating,
          min: 0,
          max: 100,
          divisions: 100,
          onChanged: (value) {
            setState(() {
              rating = value;
            });
          },
        ),
      ],
    );
  }
}

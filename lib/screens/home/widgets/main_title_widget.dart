import 'package:farmers_fresh_zone_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class MainTitleWidget extends StatelessWidget {
  final String title;
  const MainTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: kGreyColor.shade800),
    );
  }
}

import 'package:farmers_fresh_zone_ui/constants/colors.dart';
import 'package:flutter/material.dart';

class FoooterBannerWidget extends StatelessWidget {
  const FoooterBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(0),
      padding: EdgeInsets.only(top: 10, bottom: 5),
      width: double.infinity,
      height: 30,
      color: kGreenColor,
      child: Center(
          child: Text(
        "Coded by Anand",
        style: TextStyle(color: kWhiteColor),
      )),
    );
  }
}

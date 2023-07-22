import 'package:farmers_fresh_zone_ui/constants/colors.dart';
import 'package:farmers_fresh_zone_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';

class ChipContainerWidget extends StatelessWidget {
  const ChipContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return SliverToBoxAdapter(
      // child: 
    return  Container(
        width: double.infinity,
        height: 50,
        color: kWhiteColor,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) => ChipWidget(index: index),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
        ),
      // ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  final int index;
  const ChipWidget({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Chip( 
     materialTapTargetSize: MaterialTapTargetSize.padded,
      label: Text(
        categorys[index].toUpperCase(),
      ),
      labelStyle: const TextStyle(
          color: Color(0xff1d783a),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      backgroundColor:const Color(0xffbff3ce),
      side: const BorderSide(
        color: kGreenColor,
        width: 0.2,
      ),
    );
  }
}
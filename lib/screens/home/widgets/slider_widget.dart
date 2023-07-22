import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        SliderItemCard(),
      ],
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration:const Duration(milliseconds: 900),
          aspectRatio: 16 / 9,
          height: 250,
          viewportFraction: 1
          ),
    );
  }
}

class SliderItemCard extends StatelessWidget {
  const SliderItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
            'https://res.cloudinary.com/farmersfreshzone/image/upload/v1689829708/banner/cwsi2grxcaz1xchgtn2g.jpg'),
      )),
    );
  }
}

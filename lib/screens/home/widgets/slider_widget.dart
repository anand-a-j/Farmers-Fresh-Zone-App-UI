import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List sliderImage = [
      "https://res.cloudinary.com/farmersfreshzone/image/upload/v1689829708/banner/cwsi2grxcaz1xchgtn2g.jpg",
      "https://t4.ftcdn.net/jpg/03/98/10/13/240_F_398101340_3mRh3d357CuNBUbWX2lMa41TYRKlcMoW.jpg",
      "https://t4.ftcdn.net/jpg/02/67/81/97/240_F_267819786_pNyRygWHxA5FeR2hypgoj3HUyLDH1zPh.jpg",
    ];
    return CarouselSlider(
      items:  List.generate(sliderImage.length, (index) => SliderItemCard(imageUrl: sliderImage[index])), 
      options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 1200),
          aspectRatio: 16 / 9,
          height: 200,
          viewportFraction: 1),
    );
  }
}

class SliderItemCard extends StatelessWidget {
  final String imageUrl;
  const SliderItemCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}



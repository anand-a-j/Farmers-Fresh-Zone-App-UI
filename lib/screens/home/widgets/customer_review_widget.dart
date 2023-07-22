
import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh_zone_ui/constants/colors.dart';
import 'package:farmers_fresh_zone_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomerReviewWidget extends StatelessWidget {
  const CustomerReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 900),
              aspectRatio: 16 / 9,
              viewportFraction: 1),
          items: [
            ReviewCard(),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
              "This Kochi-based-farm-to-fork online\nMarketplace is connecting farmers directly\nto customers"),
        ),
        const SizedBox(
          height: 15,
        ),
        MediaCard(),
        divider,
      ],
    );
  }
}

class MediaCard extends StatelessWidget {
  const MediaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgXdoJwqDQG9ofYcTcBhdC02ItIYa6sTufBg&usqp=CAU",
            fit: BoxFit.contain,
            width: 90,
            height: 40,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy85Ra5oHFZdhu_4diJPhQvDmmNouu5fuT0w&usqp=CAU",
            fit: BoxFit.contain,
            width: 90,
            height: 40,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrHs0SfMAjW592dHPSdnPMTq-lKfxCVjZPXw&usqp=CAU",
            fit: BoxFit.contain,
            width: 90,
            height: 40,
          ),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvAQvPv-ihoC3j78ecP_CD_ZeDImFSPnmUs_-_HELnvQCh3GtAgIRnqHZWIuPcsa_NUA&usqp=CAU",
            fit: BoxFit.contain,
            width: 90,
            height: 40,
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: kGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(),
            title: Text("Rinish K N"),
            subtitle: Text("CTO, Rapid Value"),
            trailing: Icon(Icons.format_quote),
          ),
          SizedBox(
            width: double.infinity,
            height: 190,
            child: Text(
              " sservice provided by farmers fresh zone.I was exetemely happy for the  sservice provided by farmers fresh zone.I was exetemely happy for the  sservice provided by farmers fresh zone.",
              softWrap: true,
              style: TextStyle(height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}

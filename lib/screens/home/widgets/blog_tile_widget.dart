import 'package:farmers_fresh_zone_ui/constants/colors.dart';
import 'package:farmers_fresh_zone_ui/constants/constants.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/main_title_widget.dart';
import 'package:flutter/material.dart';

class BlogTileWidget extends StatelessWidget {
  const BlogTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitleWidget(title: "Our Blog Posts"),
        Container(
          padding: EdgeInsets.all(10),
          height: 240,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => BlogCard(),
          ),
        ),
        Center(
          child: Text("VIEW MORE"),
        ),
        divider
      ],
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: kGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          NetworkImage("https://picsum.photos/200"))),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Control Blood\nPresure, the rl"),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text("a year ago"),
                Spacer(),
                Icon(Icons.rotate_right)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:farmers_fresh_zone_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';
import 'main_title_widget.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainTitleWidget(title:"Shop By Category"),
            const SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: categorys.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.49 / 2.65,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5),
              itemBuilder: (context, index) => CategoryItemCard(
                  itemName: categorys[index],
                  imageUrl: categoryImageUrl[index]),
            )
          ],
        ),
      ),
    );
  }
}



class CategoryItemCard extends StatelessWidget {
  final String itemName;
  final String imageUrl;
  const CategoryItemCard(
      {super.key, required this.itemName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
      ),
      elevation: 5,
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageUrl),
                ),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(child: Text(itemName))
          ],
        ),
      ),
    );
  }
}

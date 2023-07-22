import 'package:farmers_fresh_zone_ui/constants/colors.dart';
import 'package:farmers_fresh_zone_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 5,
          // crossAxisSpacing: 5,
          childAspectRatio: 0.8 / 1),
      itemBuilder: (context, index) => ProductCard(index: index),
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({
    super.key,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 0.2, color: kGreyColor),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "${products[index]['imageUrl']}",
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(products[index]['productTitle']),
          const SizedBox(height: 15),
          products[index]['discount'] == true
              ? Row(
                  children: [
                    Text("₹${products[index]['price']}"),
                    Text(" ₹${products[index]['discountPrice']}")
                  ],
                )
              : Text("₹${products[index]['price']}"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("1.00 ${products[index]['unit']}"),
              Spacer(),
              ElevatedButton(onPressed: () {}, child:const Text("ADD"))
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}

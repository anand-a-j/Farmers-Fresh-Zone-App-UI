import 'package:farmers_fresh_zone_ui/screens/home/widgets/app_bar_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/banner_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/blog_tile_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/category_grid_wiget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/chips_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/customer_review_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/footer_banner_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/footer_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/product_grid_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/service_features_widget.dart';
import 'package:farmers_fresh_zone_ui/screens/home/widgets/slider_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List _widgets = const [
    ChipContainerWidget(),
    SliderWidget(),
    ServiceFeaturesWidget(),
    CategoryGridWidget(),
    BannerWidget(),
    ProductGridWidget(),
    BannerWidget(),
    BlogTileWidget(),
    CustomerReviewWidget(),
    FooterWidget(),
    FoooterBannerWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
         const AppBarWidget(),
          SliverToBoxAdapter(
            child: ListView.builder(
                 shrinkWrap: true,
                itemCount: _widgets.length,
                itemBuilder: (context, index) =>  _widgets[index],)
                
          )
        ],
      ),
    );
  }
}

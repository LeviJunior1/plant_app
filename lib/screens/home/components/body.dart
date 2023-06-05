import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/feature_plants.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/tile_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TileWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          const RecomendsPlants(),
          TileWithMoreBtn(
            title: "Feature Plants",
            press: () {},
          ),
          const FeaturePlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

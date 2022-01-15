import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:soft_delights/constants/image_tile.dart';
import 'package:soft_delights/constants/images_colors.dart';

class Juices extends StatelessWidget {
  const Juices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      padding: const EdgeInsets.all(12.0),
      crossAxisCount: 4,
      mainAxisSpacing: 54,
      crossAxisSpacing: 44,
      itemCount: imagesJuice.length,
      itemBuilder: (BuildContext context, int index) =>
          ImageTile(image: imagesJuice[index],color: colorsJuice[index],),
      staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2.5 : 2.0),
    );
  }
}

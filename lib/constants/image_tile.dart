import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String image;
  final Color color;

  const ImageTile({Key? key, required this.image, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(22.0),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(45.0),
        // border: Border.all(color: Color(0xff223843))
      ),
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }
}

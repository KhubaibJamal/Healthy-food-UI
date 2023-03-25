import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Detail/detail_screen.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({
    super.key,
    required this.widget,
  });

  final DetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: "image",
          child: Image(
            image: AssetImage("${widget.image}"),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 45,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Detail/detail_screen.dart';
import 'package:healthy_food_ui/constant.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Color(0xff313a48),
        ),
        SizedBox(height: defaultPadding),
        Text(
          "Popular",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(height: defaultPadding),
        CardData(
          height: height,
          width: width,
          image: "assets/chicken.png",
          text: "Chicken & spring green bun cha",
        ),
      ],
    );
  }
}

class CardData extends StatelessWidget {
  const CardData({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.text,
  });

  final double height;
  final double width;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(image: image, text: text),
          ),
        );
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: bgColorList,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              scale: 2.5,
              fit: BoxFit.cover,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

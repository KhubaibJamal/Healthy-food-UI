import 'package:flutter/material.dart';
import 'package:healthy_food_ui/constant.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class AnimatedProgressBar extends StatelessWidget {
  const AnimatedProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 87, 92, 100),
            borderRadius: BorderRadius.all(
              Radius.circular(250),
            ),
          ),
          child: Stack(
            children: [
              SimpleCircularProgressBar(
                size: 250,
                maxValue: 1000,
                // progressStrokeWidth: 12,
                backStrokeWidth: 4,
                backColor: unSelectedIconColor,
                progressColors: primaryColorList,
                animationDuration: 2,
                valueNotifier: ValueNotifier(617),
                onGetText: (double value) {
                  return Text(
                    '${(value).toInt()}',
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              Positioned(
                top: 43,
                left: 96,
                child: Image.asset("assets/energy.png"),
              ),
              Positioned(
                top: 150,
                left: 75,
                child: Text(
                  "REMAINING",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: const Color(0xff59606e),
                        letterSpacing: 2.5,
                      ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: defaultPadding * 3),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextWidget(
              title: "1383",
              subTitle: "CONSUMED",
            ),
            TextWidget(
              title: "471",
              subTitle: "BURNED",
            ),
            TextWidget(
              title: "912",
              subTitle: "NET",
            ),
          ],
        ),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const TextWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: defaultPadding / 3),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: const Color(0xff59606e),
                // letterSpacing: 2.5,
              ),
        ),
      ],
    );
  }
}

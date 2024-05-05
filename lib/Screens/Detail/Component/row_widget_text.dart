import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Home/Components/animated_progress_bar.dart';

class RowWidgetText extends StatelessWidget {
  const RowWidgetText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(title: "4", subTitle: "SERVES"),
        TextWidget(title: "1h", subTitle: "COOKS IN"),
      ],
    );
  }
}

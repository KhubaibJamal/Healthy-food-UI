import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Home/Components/header_text.dart';
import 'package:healthy_food_ui/constant.dart';

import 'Components/animated_progress_bar.dart';
import 'Components/popular_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: bgColorList,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HeaderText(),
                  SizedBox(height: defaultPadding * 2),
                  const AnimatedProgressBar(),
                  SizedBox(height: defaultPadding * 2),
                  PopularCard(
                    // height: height / 3.2,
                    height: 210,
                    width: width,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

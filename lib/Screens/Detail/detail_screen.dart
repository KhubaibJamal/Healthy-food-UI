import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Detail/Component/card_info.dart';
import 'package:healthy_food_ui/constant.dart';
import 'Component/Bottom_animation.dart';
import 'Component/detail_header.dart';
import 'Component/row_widget_text.dart';

class DetailScreen extends StatefulWidget {
  final image, text;
  const DetailScreen({super.key, required this.image, required this.text});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
            padding: EdgeInsets.all(defaultPadding / 2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  DetailHeader(widget: widget),
                  const RowWidgetText(),
                  SizedBox(height: defaultPadding),
                  CardInfoWidget(title: widget.text),
                  SizedBox(height: defaultPadding + 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomAnimation(
                        title: "CAL",
                        startAngle: 150,
                        valueNotifier: 300,
                      ),
                      BottomAnimation(
                        title: "FAT",
                        startAngle: 260,
                        valueNotifier: 140,
                      ),
                      BottomAnimation(
                        title: "CAR",
                        startAngle: 120,
                        valueNotifier: 340,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 75,
        color: const Color(0xff131923),
        // color: Colors.transparent,
        child: InkWell(
          onTap: () {
            print("object");
          },
          child: Padding(
            padding: EdgeInsets.all(defaultPadding / 2),
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadiusDirectional.circular(15.0),
                gradient: LinearGradient(
                  colors: primaryColorList,
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: Center(
                child: Text(
                  "\$4.99/ Add to card",
                  // textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold,
                        // height: 1.2,
                      ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

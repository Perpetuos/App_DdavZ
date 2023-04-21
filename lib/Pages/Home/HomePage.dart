import 'package:ddevz/Pages/BottomBar.dart';
import 'package:flutter/material.dart';
import 'HomePageBody.dart';
import '../../utilits/dimensions.dart';
import '../../utilits/appcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.heigth30, bottom: Dimensions.width10),
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        // set the default style for the children TextSpans
                        style: TextStyle(
                            fontSize: Dimensions.iconSize28,
                            fontFamily: 'Saira',
                            fontWeight: FontWeight.w600),
                        children: [
                      TextSpan(
                          text: 'D', style: TextStyle(color: Appcolor.distac)),
                      TextSpan(
                          text: 'dev',
                          style: TextStyle(color: Appcolor.letter)),
                      TextSpan(
                          text: 'Z', style: TextStyle(color: Appcolor.distac)),
                    ])),
                Icon(
                  Icons.menu,
                  color: Appcolor.letter,
                  size: Dimensions.iconSize24,
                )
              ],
            ),
          ),
          Expanded(child: SingleChildScrollView(child: HomePageBody())),
        ],
      ),
    );
  }
}

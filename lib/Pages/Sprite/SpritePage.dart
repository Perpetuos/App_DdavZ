import 'package:ddevz/Pages/Sprite/SpritePageBody.dart';
import 'package:flutter/material.dart';
import '../../utilits/dimensions.dart';
import '../../utilits/appcolor.dart';
import 'package:iconsax/iconsax.dart';

class SpritePage extends StatefulWidget {
  const SpritePage({Key? key}) : super(key: key);

  @override
  State<SpritePage> createState() => _SpritePageState();
}

class _SpritePageState extends State<SpritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: Column(
        children: [
          Container(
            height: Dimensions.heigth40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: Appcolor.search),
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                top: Dimensions.width30,
                bottom: Dimensions.width10),
            child: TextField(
              textAlign: TextAlign.start,
              maxLength: 20,
              style: TextStyle(
                  fontSize: Dimensions.font14,
                  height: 1.1,
                  color: Appcolor.letter),
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: Dimensions.height10),
                  counterText: '',
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Appcolor.letter),
                  prefixIcon: Icon(
                    Iconsax.search_normal,
                    color: Appcolor.letter,
                    size: Dimensions.iconSize24,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: SpritePageBody())),
        ],
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import '../utilits/dimensions.dart';
import '../utilits/appcolor.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';

class LikePage extends StatefulWidget {
  const LikePage({Key? key}) : super(key: key);

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(71, 125, 153, 230)),
            margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
            child: TextField(
              textAlign: TextAlign.start,
              maxLength: 20,
              style: TextStyle(
                  fontSize: 14.0,
                  height: 1.1,
                  color: Color.fromARGB(255, 255, 255, 255)),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  counterText: '',
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(
                      fontSize: 15, fontFamily: 'Saira', color: Colors.white54),
                  prefixIcon: Icon(
                    Iconsax.search_normal,
                    color: Colors.white,
                    size: 20,
                  ),
                  border: InputBorder.none),
            ),
          ),
          //Expanded(child: SingleChildScrollView(child: LikePageBody())),
        ],
      ),
    );
  }
}

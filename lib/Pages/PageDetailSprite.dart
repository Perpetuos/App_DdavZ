import 'package:flutter/material.dart';
import '../utilits/dimensions.dart';
import '../utilits/appcolor.dart';
import 'package:iconsax/iconsax.dart';

class PageDetailSprite extends StatefulWidget {
  const PageDetailSprite({Key? key}) : super(key: key);

  @override
  State<PageDetailSprite> createState() => _PageDetailSpriteState();
}

class _PageDetailSpriteState extends State<PageDetailSprite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: Stack(
        children: [
          Positioned(
              child: Container(
            height: Dimensions.heigth400,
            decoration: BoxDecoration(
              color: Color.fromARGB(156, 30, 37, 51),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(Dimensions.radius40),
                  bottomLeft: Radius.circular(Dimensions.radius40)),
              image: DecorationImage(
                alignment: Alignment(-0.2, 0.7),
                scale: 0.05,
                filterQuality: FilterQuality.none,
                image: AssetImage(
                  "assets/images/Player.png",
                ),
              ),
            ),
          )),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.heigth40, bottom: Dimensions.width30),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Iconsax.arrow_square_left,
                    color: Appcolor.letter,
                    size: 38,
                  ),
                  Icon(
                    Iconsax.heart,
                    color: Appcolor.letter,
                    size: 38,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                // color: Colors.blue,
                margin: EdgeInsets.only(left: 20, top: 400),
                height: 60,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Player idle left",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: Dimensions.font26,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.blue,
                margin: EdgeInsets.only(left: 20),
                height: 20,
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "November 20 . Brazil",
                      style: TextStyle(
                        color: Color.fromARGB(131, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontSize: Dimensions.font14,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.only(left: 20),
                height: 100,
                width: 200,
                child: Row(
                  children: [
                    Text(
                      "#5FCDE4",
                      style: TextStyle(
                        color: Color.fromARGB(131, 255, 255, 255),
                        fontFamily: 'Poppins',
                        fontSize: Dimensions.font14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

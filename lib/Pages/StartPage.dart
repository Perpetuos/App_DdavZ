import '../utilits/appcolor.dart';
import 'package:flutter/material.dart';
import '../utilits/dimensions.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    //print("current height is " + MediaQuery.of(context).size.height.toString());
    // current height is 844.0
    return Scaffold(
      backgroundColor: const Color.fromRGBO(52, 54, 67, 100),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.heigth30, bottom: Dimensions.width30),
            padding: EdgeInsets.only(left: Dimensions.width20),
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
                        children: const [
                      TextSpan(
                          text: 'D',
                          style: TextStyle(
                              color: Color.fromRGBO(95, 205, 228, 1))),
                      TextSpan(
                          text: 'dev',
                          style: TextStyle(color: Color(0xFFD9D9D9))),
                      TextSpan(
                          text: 'Z',
                          style: TextStyle(color: Color(0xFF5FCDE4))),
                    ])),
              ],
            ),
          ),
          Container(
            height: Dimensions.pageStartContainer,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/start.png")),
            ),
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          Container(
            //decoration: BoxDecoration(color: Color.fromARGB(255, 182, 75, 75)),
            margin: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.heigth70,
                bottom: Dimensions.heigth40),
            child: Column(
              children: [
                SizedBox(
                  height: Dimensions.heigth50,
                  //decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    children: [
                      Text(
                        "Game",
                        style: TextStyle(
                          color: Appcolor.distac,
                          fontSize: Dimensions.font44,
                          fontFamily: 'Poppins-B',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Development",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.font44,
                        fontFamily: 'Poppins-B',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "This application is intended to present the development of a game in real time, using my own unity 2d project as a base.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Dimensions.font14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 140),
              height: Dimensions.heigth70,
              width: Dimensions.width210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius5),
                  color: Appcolor.distac),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'START',
                    style: TextStyle(
                        fontFamily: "Poppins-B", fontSize: Dimensions.font20),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

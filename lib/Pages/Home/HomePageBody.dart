import 'package:ddevz/widgets/Small.dart';
import 'package:flutter/material.dart';
import '../../utilits/dimensions.dart';
import '../../utilits/appcolor.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  PageController pageController2 = PageController(viewportFraction: 0.85);

  @override
  // ignore: must_call_super
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(left: Dimensions.width20),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                      text: TextSpan(
                          // set the default style for the children TextSpans
                          style: TextStyle(
                            fontSize: Dimensions.font14,
                            fontFamily: 'poppins',
                          ),
                          children: [
                        TextSpan(
                            text: 'New',
                            style: TextStyle(color: Appcolor.distac)),
                        WidgetSpan(
                            child: SizedBox(
                          width: Dimensions.width5,
                        )),
                        TextSpan(
                            text: 'Sprite',
                            style: TextStyle(color: Appcolor.letter)),
                      ])),
                )
              ],
            )),
        SizedBox(
          //color: Colors.red,
          height: Dimensions.heigth250,
          child: PageView.builder(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, position) {
                return _buildPageItemSprite(position);
              }),
        ),
        SizedBox(height: Dimensions.height20),
        Container(
            margin: EdgeInsets.only(left: Dimensions.width20),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                      text: TextSpan(
                          // set the default style for the children TextSpans
                          style: TextStyle(
                            fontSize: Dimensions.font14,
                            fontFamily: 'poppins',
                          ),
                          children: [
                        TextSpan(
                            text: 'New',
                            style: TextStyle(color: Appcolor.distac)),
                        WidgetSpan(child: SizedBox(width: Dimensions.width5)),
                        TextSpan(
                            text: 'Script',
                            style: TextStyle(color: Appcolor.letter)),
                      ])),
                )
              ],
            )),
        SizedBox(
          //color: Colors.blue,
          height: Dimensions.heigth100,
          child: PageView.builder(
              controller: pageController2,
              itemCount: 3,
              itemBuilder: (context, position) {
                return _buildPageItemScript(position);
              }),
        ),
        SizedBox(height: Dimensions.height20),
        Container(
            margin: EdgeInsets.only(left: Dimensions.width20),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                      text: TextSpan(
                          // set the default style for the children TextSpans
                          style: TextStyle(
                            fontSize: Dimensions.font14,
                            fontFamily: 'poppins',
                          ),
                          children: [
                        TextSpan(
                            text: 'Additional ',
                            style: TextStyle(color: Appcolor.distac)),
                        WidgetSpan(child: SizedBox(width: Dimensions.width5)),
                        TextSpan(
                            text: 'Information',
                            style: TextStyle(color: Appcolor.letter)),
                      ])),
                )
              ],
            )),

        //lista de itens e duas abas de notificação que to pensando ainda bllablabla
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // quantidade de itens, cards blblsjdf
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                height: Dimensions.heigth100,
                margin: EdgeInsets.all(Dimensions.height10),
                decoration: BoxDecoration(
                  color: Appcolor.box1,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  border: Border.all(color: Appcolor.border),
                  boxShadow: [
                    BoxShadow(
                      color: Appcolor.shadow.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
              );
            }),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // quantidade de itens, cards blblsjdf
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                margin: EdgeInsets.all(Dimensions.height10),
                decoration: BoxDecoration(
                  color: Appcolor.box1,
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  border: Border.all(color: Appcolor.border),
                  boxShadow: [
                    BoxShadow(
                      color: Appcolor.shadow.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItemSprite(int index) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          margin: EdgeInsets.all(Dimensions.height10),
          decoration: BoxDecoration(
              color: index.isEven ? Appcolor.box1 : Appcolor.box2,
              border: Border.all(color: Appcolor.border),
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              boxShadow: [
                BoxShadow(
                  color: Appcolor.shadow.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                colorFilter:
                    ColorFilter.mode(Colors.white, BlendMode.saturation),
                scale: 0.08,
                filterQuality: FilterQuality.none,
                image: AssetImage(
                  "assets/images/Player.png",
                ),
              )),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(
                left: Dimensions.heigth30, top: Dimensions.width20),
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              color: Appcolor.box1,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Appcolor.border),
              boxShadow: [
                BoxShadow(
                  color: Appcolor.shadow.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.width10),
              child: Row(
                children: [
                  Expanded(
                      child: Small(
                    text: "text",
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPageItemScript(int index) {
    return Stack(children: [
      Container(
        height: 150,
        margin: EdgeInsets.all(Dimensions.height10),
        decoration: BoxDecoration(
            color: index.isEven ? Appcolor.box1 : Appcolor.box2,
            border: Border.all(color: Appcolor.border),
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            boxShadow: [
              BoxShadow(
                  color: Appcolor.shadow.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 5) // changes position of shadow
                  )
            ]),
        child: Container(
            //color: Color.fromARGB(255, 105, 48, 70),
            padding: EdgeInsets.only(left: Dimensions.width10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RichText(
                          text: TextSpan(
                              // set the default style for the children TextSpans
                              style: TextStyle(
                                fontSize: Dimensions.font18,
                                fontFamily: 'poppins',
                              ),
                              children: [
                            TextSpan(
                                text: 'Player',
                                style: TextStyle(color: Appcolor.distac)),
                            WidgetSpan(
                                child: SizedBox(width: Dimensions.width10)),
                            TextSpan(
                                text: 'Movement',
                                style: TextStyle(color: Appcolor.letter2)),
                          ])),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: Dimensions.width10),
                  child: Row(
                    children: [
                      Expanded(
                        child: RichText(
                            text: TextSpan(
                                // set the default style for the children TextSpans
                                style: TextStyle(
                                  fontSize: Dimensions.font14,
                                  fontFamily: 'poppins',
                                ),
                                children: [
                              const TextSpan(
                                  text: 'private',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 76, 94, 194))),
                              WidgetSpan(
                                  child: SizedBox(width: Dimensions.width10)),
                              const TextSpan(
                                  text: 'Vector2',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 161, 23, 120))),
                            ])),
                      )
                    ],
                  ),
                ),
              ],
            )),
      )
    ]);
  }
}

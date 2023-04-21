import 'package:flutter/material.dart';
import '../../utilits/dimensions.dart';
import '../../utilits/appcolor.dart';
import '../../widgets/small_text.dart';

class SpritePageBody extends StatefulWidget {
  const SpritePageBody({Key? key}) : super(key: key);

  @override
  State<SpritePageBody> createState() => _SpritePageBodyState();
}

class _SpritePageBodyState extends State<SpritePageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // quantidade de itens, cards blblsjdf
            itemCount: 5,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 140,
                    margin: EdgeInsets.only(left: 10, right: 25),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      border: Border.all(color: Appcolor.border),
                      boxShadow: [
                        BoxShadow(
                          color: Appcolor.shadow.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                      // image: const DecorationImage(
                      //   alignment: Alignment(0, 0.7),
                      //   scale: 0.14,
                      //   filterQuality: FilterQuality.none,
                      //   image: AssetImage(
                      //     "assets/images/Player.png",
                      //   ),
                      // ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(Dimensions.height10),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Appcolor.box1,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Appcolor.border),
                            boxShadow: [
                              BoxShadow(
                                color: Appcolor.shadow.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SmallText(
                                text: "Player",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40, bottom: 10),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              scale: 0.1,
                              filterQuality: FilterQuality.none,
                              image: AssetImage(
                                "assets/images/Player.png",
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 140,
                    margin: EdgeInsets.only(left: 10, top: 30),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      border: Border.all(color: Appcolor.border),
                      boxShadow: [
                        BoxShadow(
                          color: Appcolor.shadow.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(Dimensions.height10),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Appcolor.box1,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Appcolor.border),
                            boxShadow: [
                              BoxShadow(
                                color: Appcolor.shadow.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SmallText(
                                text: "Flint",
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40, bottom: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment.topCenter,
                              scale: 0.1,
                              filterQuality: FilterQuality.none,
                              image: AssetImage(
                                "assets/images/Flint.png",
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              );
            })
      ],
    );
  }
}

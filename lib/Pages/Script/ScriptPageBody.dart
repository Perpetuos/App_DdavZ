import 'package:flutter/material.dart';
import '../../utilits/dimensions.dart';
import '../../utilits/appcolor.dart';
import 'package:iconsax/iconsax.dart';

class ScriptPageBody extends StatefulWidget {
  const ScriptPageBody({Key? key}) : super(key: key);

  @override
  State<ScriptPageBody> createState() => _ScriptPageBodyState();
}

class _ScriptPageBodyState extends State<ScriptPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // quantidade de itens, cards blblsjdf
            itemCount: 5,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 170,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Appcolor.box1,
                      borderRadius: BorderRadius.circular(5),
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
                    child: Container(
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
                                            fontSize: Dimensions.font14,
                                            fontFamily: 'poppins',
                                          ),
                                          children: [
                                        TextSpan(
                                            text: 'Player',
                                            style: TextStyle(
                                                color: Appcolor.distac)),
                                        WidgetSpan(
                                            child: SizedBox(
                                                width: Dimensions.width10)),
                                        TextSpan(
                                            text: 'Movement',
                                            style: TextStyle(
                                                color: Appcolor.letter2)),
                                      ])),
                                )
                              ],
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: Dimensions.width10),
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
                                              text: 'private',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 76, 94, 194))),
                                          WidgetSpan(
                                              child: SizedBox(
                                                  width: Dimensions.width10)),
                                          TextSpan(
                                              text: 'Vector2',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 161, 23, 120))),
                                        ])),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    height: 70,
                    width: 170,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Appcolor.box1,
                      borderRadius: BorderRadius.circular(5),
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
                  ),
                ],
              );
            })
      ],
    );
  }
}

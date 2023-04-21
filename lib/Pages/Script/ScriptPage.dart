import 'package:ddevz/Pages/Script/ScriptPageBody.dart';
import 'package:flutter/material.dart';
import '../../utilits/dimensions.dart';
import '../../utilits/appcolor.dart';
import 'package:iconsax/iconsax.dart';

class ScriptPage extends StatefulWidget {
  const ScriptPage({Key? key}) : super(key: key);

  @override
  State<ScriptPage> createState() => _ScriptPageState();
}

class _ScriptPageState extends State<ScriptPage> {
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
            margin: EdgeInsets.only(left: 18, right: 18, top: 30, bottom: 10),
            child: TextField(
              textAlign: TextAlign.start,
              maxLength: 20,
              style: TextStyle(
                  fontSize: Dimensions.font14,
                  height: 1.1,
                  color: Color.fromARGB(255, 255, 255, 255)),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  counterText: '',
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      color: Colors.white54),
                  prefixIcon: Icon(
                    Iconsax.search_normal,
                    color: Colors.white,
                    size: 20,
                  ),
                  border: InputBorder.none),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: ScriptPageBody())),
        ],
      ),
    );
  }
}

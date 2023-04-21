import 'package:ddevz/utilits/dimensions.dart';
import 'package:flutter/material.dart';
import '../utilits/appcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'Home/HomePage.dart';
import 'Sprite/SpritePage.dart';
import 'Script/ScriptPage.dart';
import 'LikePage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.white.withOpacity(0.5),
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontSize: Dimensions.font14,
                fontFamily: 'Poppins',
                color: Color(0xFFD9D9D9)))),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: Color.fromARGB(255, 32, 32, 41), width: 1.0))),
          child: NavigationBar(
            backgroundColor: Appcolor.background,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            height: 70,
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(Iconsax.coffee5, color: Colors.brown),
                icon: Icon(Iconsax.coffee, color: Colors.brown),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon:
                    Icon(Iconsax.image5, color: Colors.lightBlueAccent),
                icon: Icon(Iconsax.image, color: Colors.lightBlueAccent),
                label: 'Sprite',
              ),
              NavigationDestination(
                selectedIcon: Icon(Iconsax.message_programming5,
                    color: Colors.deepPurple),
                icon:
                    Icon(Iconsax.message_programming, color: Colors.deepPurple),
                label: 'Script',
              ),
              NavigationDestination(
                selectedIcon: Icon(Iconsax.heart5, color: Colors.redAccent),
                icon: Icon(Iconsax.heart, color: Colors.redAccent),
                label: 'Like',
              ),
            ],
          ),
        ),
      ),
      body: <Widget>[
        HomePage(),
        SpritePage(),
        ScriptPage(),
        LikePage(),
      ][currentPageIndex],
    );
  }
}

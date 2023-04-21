import 'package:ddevz/Pages/BottomBar.dart';
import 'package:ddevz/Pages/Home/HomePage.dart';
import 'package:ddevz/Pages/LoginPage.dart';
import 'package:ddevz/Pages/StartPage.dart';
import 'package:ddevz/Services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);

    if (auth.isLoading)
      return Loading();
    else if (auth.usuario == null)
      return LoginPage();
    else
      return BottomBar();
  }

  Loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

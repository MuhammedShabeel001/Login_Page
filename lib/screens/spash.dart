import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    checkUserLogged();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (ctx) => ScreenLogin(),
    ));
  }

  Future<void> checkUserLogged() async {
    final _sharedPref = await SharedPreferences.getInstance();
    final userLogged = _sharedPref.getBool(keyValue);

    if (userLogged == null || userLogged == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context1) => ScreenHome()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black
        ),
        child: Center(
          child: Image.asset('assets/S-logo.png',
           height: 500),
        ),
      ),
    );
  }
}
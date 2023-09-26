import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        actions: [
          IconButton(
            onPressed: () {
              signout(context);
            },
            icon: const Icon(
              Icons.exit_to_app_rounded),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Hexagon-home.png'),
          fit: BoxFit.cover,
        )),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/luffy.png'),
                    fit: BoxFit.cover)),
                height: 300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Luffy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    ),),
                  ],
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                
               decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/gojo.png'),
                  fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(
                    Radius.circular(500))),
                height: 300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Gojo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    ),),
                  ],
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/zoro.png'),
                    fit: BoxFit.cover)),
                height: 300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Zoro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    ),),
                  ],
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/itadori.png'),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(
                      Radius.circular(500))),
                height: 300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Itadori',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    ),),
                  ],
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/nami.png'),
                    fit: BoxFit.cover)),
                height: 300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Nami',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    ),),
                  ],
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/toge.png'),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(
                      Radius.circular(500))),
                height: 300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Toge',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),),                
                  ],
                )
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),),
        ),
    ));
  }

  void signout(BuildContext context) async {
    final _sharedPref = await SharedPreferences.getInstance();
    await _sharedPref.clear();

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context1) => const MyApp()),
      (route) => false,
    );
  }
}
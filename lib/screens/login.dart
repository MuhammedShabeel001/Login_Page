import 'package:flutter/material.dart';
import 'package:login/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login/main.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phonenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/Hexagon.png'),
          fit: BoxFit.cover,
        )),
        child: Center(
          child: SafeArea(
            child: Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(192, 244, 186, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('assets/S-logo-bg-black.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Login',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 40
                    ),),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                           labelText: 'Name'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: _phonenumberController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number'),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            checkLogin(context);
                          },
                          child: const Text('Login'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext context) async {
    // Replace these with your actual login credentials
    const String user = 'shabeel';
    const String no = '9876543210';
    const String pw = 'admin01';

    final name = _usernameController.text;
    final number = _phonenumberController.text;
    final password = _passwordController.text;
    if (name == user && number == no && password == pw) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ScreenHome(),
      ));

      final _sharedPref = await SharedPreferences.getInstance();
      await _sharedPref.setBool(keyValue, true);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(20),
          backgroundColor: Colors.red,
          content: Text('Login failed!'),
        ),
      );
    }
  }
}
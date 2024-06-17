import 'package:flutter/material.dart';
import 'package:resume_parser/dashboard.dart';
import 'package:resume_parser/profile.dart';
import 'package:resume_parser/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String? passwordError;
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Welcome Back",
          ),
          foregroundColor: Colors.cyan,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(
              right: 50,
              left: 50,
            ),
            child: Column(
              children: [
                Container(
                  color: Colors.white70,
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 300,
                    width: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 40, bottom: 20),
                  child: Container(
                    color: Colors.white70,
                    child: TextField(
                      controller: usernamecontroller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.cyan),
                        ),
                        labelText: "User Name",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 40),
                  child: Container(
                    color: Colors.white60,
                    child: TextField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(color: Colors.cyan),
                        ),
                        labelText: "Password",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
                Text("...New Here..."),
                TextButton(onPressed: ()
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return signup();
                      })
                      );},
                    child: Text("Sign up")),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return dashboard();
                        }));
                      },
                      child: const Text(
                        "Login In",
                        style: TextStyle(color: Colors.cyan),
                      )),
                ),
              ],
            ),
          )),
        ));
  }
  void logninfo() async {
    {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('username', usernamecontroller.text);
      prefs.setString('password', passwordcontroller.text);
    }
  }
  }

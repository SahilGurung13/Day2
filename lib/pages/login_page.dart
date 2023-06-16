import 'package:flutter/material.dart';
import 'package:flutter_day1/utils/routes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState?.validate() ?? true) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 0,
                ),
                Image.asset(
                  "assets/images/logo1.png",
                  fit: BoxFit.contain,
                  width: 400,
                ),
                SizedBox(
                  height: 0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {
                            build(context);
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true, //hide password
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return "password cannot be empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 30 : 9),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 45 : 150,
                            height: 45,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                          ),
                        ),
                      ),

                      // ElevatedButton(
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

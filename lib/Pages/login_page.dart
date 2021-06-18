import "package:flutter/material.dart";
import 'package:hello_world_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
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
                  height: 30,
                ),
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Yout Username",
                            labelText: "Username"),
                        validator: (value) {
                          if (value == "") {
                            return "Username cannot be Empty";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Yout Password",
                            labelText: "Password"),
                        validator: (value) {
                          if (value == "") {
                            return "Password cannot be Empty";
                          } else if (value!.length < 6) {
                            return "Password Length should be atleast 6";
                          }
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 10),
                        child: InkWell(
                          hoverColor: Colors.white,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 150 : 400,
                            height: 40,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Text("Success",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18))
                                : Text("Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

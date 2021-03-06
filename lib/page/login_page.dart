import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
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
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.contain,
                height: 250.0,
              ),
              //SizedBox(
              //  height: 00.0,
              // ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 30.0,
                child: Text("Login here"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.deepOrange),
                          hintText: "Enter User Name",
                          labelText: "username"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "User Name cannnot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: Colors.deepOrange),
                          hintText: "Enter Password",
                          labelText: "password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannnot be empty";
                        } else if (value.length < 6) {
                          return "password lenght cannot be less then 6";
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Material(
                      color: Colors.deepOrange,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 10),
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
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
                                    fontSize: 20,
                                  ),
                                ),
                          //decoration: BoxDecoration(
                          // color: Colors.deepOrange,
                          //shape:
                          //  changeButton ? BoxShape.circle :
                          // BoxShape.rectangle,

                          //),
                        ),
                      ),
                    ),

                    //ElevatedButton(
                    //  onPressed: () {
                    //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //  },
                    //  child: Text("Login"),
                    //  style: TextButton.styleFrom(
                    //    minimumSize: Size(150, 40),
                    //  ),
                    //),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

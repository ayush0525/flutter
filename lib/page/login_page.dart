import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              height: 20.0,
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
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
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
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        //shape:
                        //  changeButton ? BoxShape.circle :
                        // BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 10),
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
    );
  }
}

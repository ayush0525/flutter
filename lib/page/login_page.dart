import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
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
              "Login",
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                      minimumSize: Size(150, 40),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

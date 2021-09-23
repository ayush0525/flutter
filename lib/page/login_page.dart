import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.fitHeight,
          ),
          //SizedBox(
          //  height: 00.0,
          // ),
          Text(
            "Login",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
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
                      hintText: "Enter User Name", labelText: "username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "password"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("OyeMart");
                  },
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

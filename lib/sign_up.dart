import 'dart:ui';

import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  get controllerEmail => null;

  get controllerpassword => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30.0,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: controllerEmail,
                keyboardType: TextInputType.emailAddress,
                textCapitalization: TextCapitalization.none,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  labelText: "Email",
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                controller: controllerpassword,
                obscureText: true,
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 50.0,
                width: 400.0,
                child: RaisedButton(
                  color: Colors.red,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  shape: StadiumBorder(
                      side: BorderSide(
                    width: 0,
                  )),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                "or",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Container(
                height: 50.0,
                width: 400.0,
                child: RaisedButton(
                  color: Colors.blueAccent,
                  child: const Text(
                    "Facebook Login",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  shape: StadiumBorder(
                    side: BorderSide(
                      width: 0.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

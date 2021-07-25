import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage("assets/logo.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email',
                    hintText: 'Enter Your Email',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    showAlertDialog(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
    },
  );
  Widget continueButton = TextButton(
    child: Text("Ok"),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('your successfully login'),
          behavior: SnackBarBehavior.floating,
          width: 300,
        ),
      );
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("Are you sure you want to sing in?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

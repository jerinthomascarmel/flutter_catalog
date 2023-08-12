import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Login Page",
        ),
      ),
      body: Material(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.fill,
                // width: 20,
                height: 150,
              ),
              SizedBox(
                height: 0,
              ),
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "Enter Username"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter password"),
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    print("pressed");
                  },
                  child: Text("Login"))
            ],
          )),
    );
  }
}

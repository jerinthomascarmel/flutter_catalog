import 'package:flutter/material.dart';
import 'package:flutter_catalog/page/home_page.dart';
import 'package:flutter_catalog/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
          child: SingleChildScrollView(
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
                Text(
                  "Welcome $name",
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
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
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
                // ElevatedButton(
                //     style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                //     onPressed: () {
                //       // Navigator.of(context).push(
                //       //     MaterialPageRoute(builder: (context) => HomePage()));
                //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
                //       print("pressed");
                //     },
                //     child: Text("Login"))
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 50 : 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 10)),
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
                                  fontSize: 20),
                            )),
                )
              ],
            ),
          )),
    );
  }
}

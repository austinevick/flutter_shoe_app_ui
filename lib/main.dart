import 'package:flutter/material.dart';

import 'Screen/homepage.dart';

const textStyle =
    TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage());
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage('asset/shoe_1.jpg'))),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 80,
                    child: Text(
                      'Nike store'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: textStyle,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, color: Colors.red),
                            hintText: 'Enter your email',
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        style: textStyle,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock, color: Colors.red),
                            hintText: 'Enter your password',
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.red,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Create Account'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                        ),
                        Container(
                          color: Colors.white24,
                          height: 20,
                          width: 2.0,
                        ),
                        Expanded(
                          child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password'.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

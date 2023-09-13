import 'package:customer_app_design/signup_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';




class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    expandedHeight: 400.0,
                    floating: true,
                    pinned: true,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70),
                            bottomRight: Radius.circular(70),
                          ),
                          color: Color(0xffFF0000),
                          boxShadow: [BoxShadow(blurRadius: 15.0)],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0.1 *
                              MediaQuery.of(context)
                                  .size
                                  .width), // Adjust the padding based on screen width
                          child: Image.asset('android/app/images/logo.png'),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                        color: Colors.white,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 37,
                                  left: 30,
                                  top: 50,
                                  bottom: 10,
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: '+91' ' Mobile Number ',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Container(
                                  width: 146,
                                  height: 51,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color(0xffFF0000),
                                    boxShadow: [
                                      new BoxShadow(blurRadius: 10.0)
                                    ],
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()),
                                      );
                                    },
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 20,
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Don't have an account ? ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      textStyle: TextStyle(fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()),
                                      );
                                    },
                                    child: Text(
                                      'Sign up',
                                      style: TextStyle(
                                          color: Color(0xffF40A0A),
                                          fontSize: 15,
                                          fontFamily: 'Comfortaa',
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  )
                ],
              ))),
    );
  }
}

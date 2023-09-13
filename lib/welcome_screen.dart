import 'package:flutter/material.dart';
import 'package:customer_app_design/signin_screen.dart';
import 'package:customer_app_design/signup_screen.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    Widget _buildButton(
      BuildContext context,
      String label,
      Color color,
      Widget screen,
      double screenWidth,
      double screenHeight,
    )
     {
      return Column(children: [
        Container(
          height: 41,
          width: 115,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(21)),
            boxShadow: [
              BoxShadow(
                color: color == Colors.red ? Colors.red : Colors.white,
                spreadRadius: 2,
                blurRadius: 0,
                blurStyle: BlurStyle.inner,
                offset: Offset(-2, -2),
              ),
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                spreadRadius: 2,
                blurRadius: 2,
                blurStyle: BlurStyle.inner,
                offset: Offset(-3, -4),
              ),
              BoxShadow(
                color: color == Colors.red ? Colors.red : Colors.white,
                spreadRadius: 1,
                blurRadius: 4,
                blurStyle: BlurStyle.inner,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontFamily: "Comfortaa",
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => screen),
                );
              },
              child: Text(
                label,
                style: TextStyle(
                  color: color == Colors.red ? Colors.white : Colors.red,
                  fontSize: screenWidth * 0.045,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ]);
    }

    Widget topLogo() {
      return Container(
        padding: EdgeInsets.all(screenWidth * 0.3),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            bottomRight: Radius.circular(70),
          ),
          color: Color(0xffFF0000),
          boxShadow: [
            BoxShadow(blurRadius: 13),
          ],
        ),
        child: Image.asset('android/app/images/logo.png'),
      );
    }

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.all(screenWidth * 0.3),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          bottomRight: Radius.circular(70),
                        ),
                        color: Color(0xffFF0000),
                        boxShadow: [
                          BoxShadow(blurRadius: 13, spreadRadius: 0),
                        ],
                      ),
                      child: Image.asset('android/app/images/logo.png'),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Color(0xff263238),
                            fontSize: screenWidth * 0.12,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'Designed for living in a better world',
                          style: TextStyle(
                            color: Color(0xffA49DAE),
                            fontSize: screenWidth * 0.032,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenHeight * 0.1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          _buildButton(
                            context,
                            'Sign up',
                            Colors.red,
                            SignUp(),
                            screenWidth,
                            screenHeight,
                          ),
                          _buildButton(
                            context,
                            'Sign in',
                            Colors.white,
                            SigninScreen(),
                            screenWidth,
                            screenHeight,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'home_screen2.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: true,
                pinned: true,
                centerTitle: true,
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
                                  left: 40, right: 30, top: 20, bottom: 20),
                              //apply padding to some sides only
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                      color: Color(0xffA49DAE),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 88,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffFF0000),
                                    ),
                                    child: Center(
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: TextStyle(fontSize: 20),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUp()),
                                            );
                                          },
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(2),
                                                    child: Image.asset(
                                                      'android/app/images/male.png',
                                                      width: 12,
                                                      height: 12,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8,
                                                        bottom: 1,
                                                        right: 2,
                                                        top: 1),
                                                    //apply padding to some sides only
                                                    child: Text('Male',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Comfortaa',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.right),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Container(
                                    width: 88,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffFF0000),
                                    ),
                                    child: Center(
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
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(2),
                                                    child: Image.asset(
                                                      'android/app/images/female.png',
                                                      width: 14,
                                                      height: 12,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8,
                                                        bottom: 1,
                                                        right: 2,
                                                        top: 1),
                                                    //apply padding to some sides only
                                                    child: Text('Female',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Comfortaa',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.right),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                  Container(
                                    width: 88,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffFF0000),
                                    ),
                                    child: Center(
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                            textStyle: TextStyle(fontSize: 20),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUp()),
                                            );
                                          },
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.all(2),
                                                    child: Image.asset(
                                                      'android/app/images/other.png',
                                                      width: 14,
                                                      height: 14,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8,
                                                        bottom: 1,
                                                        right: 2,
                                                        top: 1),
                                                    //apply padding to some sides only
                                                    child: Text('Other',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'Comfortaa',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.right),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 40, right: 30, top: 10, bottom: 20),
                              //apply padding to some sides only
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: '+91  Mobile Number',
                                  hintStyle: TextStyle(
                                      color: Color(0xffA49DAE),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 50, right: 20, top: 10, bottom: 30),
                              child: Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                    Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "By continuing, you agree to",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Comfortaa',
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xff8F8F8F)),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Goaira's",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Comfortaa',
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff8F8F8F)),
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                textStyle:
                                                    TextStyle(fontSize: 20),
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                'Terms & Privacy policy',
                                                style: TextStyle(
                                                    color: Color(0xffF40A0A),
                                                    fontSize: 15,
                                                    fontFamily: 'Comfortaa',
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          InkWell(
  onTap: () {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
       
        return HomeScreen1();
      },
    ));
  },
  child: TextButton(
    onPressed: null,
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      backgroundColor: Color(0xffFF0000),
      elevation: 10,
    ),
    child: Container(
      width: 115,
      height: 41,
      child: Center(
        child: Text(
          'Sign up',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 15,
            fontFamily: 'Comfortaa',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  ),
)

                            
                          ]
                          ))))
            ]
            )),
      ),
    );
  }
}

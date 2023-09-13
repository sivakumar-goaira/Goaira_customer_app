import 'package:flutter/material.dart';

class OtpVerfySucScreen extends StatelessWidget {
  const OtpVerfySucScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 30,
                        height: 30,
                        child: Icon(
                          Icons.question_mark,
                          color: Color(0xff0000000),
                          size: 15.0,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff0000000)),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                width: 250,
                height: 250,
                child: Image.asset(
                  'android/app/images/sucess.png',
                  height: 150,
                  width: 150,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFE1EDD3)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Mobile verification',
              style: TextStyle(
                  color: Color(0xff283242),
                  fontSize: 20,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'success',
              style: TextStyle(
                  color: Color(0xff283242),
                  fontSize: 20,
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    ));
  }
}

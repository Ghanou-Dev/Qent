import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:qent/pages/login.dart';

class SecondBoard extends StatefulWidget {
  const SecondBoard({super.key});

  @override
  State<SecondBoard> createState() => _SecondBoardState();
}

class _SecondBoardState extends State<SecondBoard> {
  @override
  void initState() {
    super.initState();
    // جعل المحتوى يمتد تحت الـ status bar و navigation bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor:
            Colors.transparent, // إخفاء الخط الفاصل
        systemNavigationBarIconBrightness:
            Brightness.light, // لون أيقونات الشريط
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/second.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              stops: [0.35, 1.0],
              colors: <Color>[Colors.black, Colors.transparent],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Gap(20),
                SizedBox(
                  height: 73.85,
                  width: 73.85,
                  child: Image.asset("assets/images/logoQent12.png"),
                ),
                Gap(30),
                Text(
                  'Lets Start \nA New Experience \nWith Car rental. ',
                  style: TextStyle(
                    fontFamily: 'tajawal',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Gap(250),
                Text(
                  'Discover your next adventure with Qent. we’re here to\nprovide you with a seamless car rental experience.\nLet’s get started on your journey.',
                  style: TextStyle(
                    fontFamily: 'tajawal',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Gap(34),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff21292b),
                    fixedSize: Size(390, 62),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(Login.pageRoute);
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'tajawal',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

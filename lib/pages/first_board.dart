import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:qent/pages/login.dart';

class FirstBoard extends StatefulWidget {
  const FirstBoard({super.key});

  @override
  State<FirstBoard> createState() => _FirstBoardState();
}

class _FirstBoardState extends State<FirstBoard> {
  @override
  void initState() {
    super.initState();
    // جعل المحتوى يمتد تحت الـ status bar و navigation bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // status bar setting
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        // navigation bar settings
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
          'assets/images/first.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topCenter,
              end: AlignmentGeometry.bottomCenter,
              stops: [0.4, 1.0],
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
                  'Welcom to \nQent ',
                  style: TextStyle(
                    fontFamily: 'tajawal',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Gap(360),
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

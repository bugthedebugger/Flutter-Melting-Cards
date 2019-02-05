import 'package:flutter/material.dart';
import 'package:melting_card/melting_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Melting Cards Example",
      home: MeltingCardExample()
    );
  }
}

class MeltingCardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 360, height: 640, allowFontScaling: true)..init(context);

    return Scaffold(
      body: MeltingCard(
        height: ScreenUtil().setHeight(300),
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Center(
            child: Text(
              "Melting card example", 
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),)
          ),
        )
      ),
    );
  }
}
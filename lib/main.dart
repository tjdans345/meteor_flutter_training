import 'package:flutter/material.dart';
import 'package:meteor_flutter_training/screen/button_tr/button_screen.dart';
import 'package:meteor_flutter_training/screen/route_tr/route_main_screen.dart';

// Button Main Page
// void main() {
//   runApp(const MaterialApp(
//     home: ButtonScreen(),
//   ));
// }

// Route Main Page
void main() {
  runApp(MaterialApp(
    // homePage 설정
    // 루트 네이밍을 적어준다.
    initialRoute: "/",

    // nameRoute 이다.
    // Map 타입으로 키값과 벨류값이 들어간다.
    routes: {
      "/": (context) => RouteMainScreen(),
    },
  ));
}

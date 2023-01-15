import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteor_flutter_training/layout/main_layout.dart';
import 'package:meteor_flutter_training/screen/route_tr/route_screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  // 페이지로 부터 파라미터를 전달 받을 수 있다.
  const RouteOneScreen({required this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "One Page", children: [
      Text("arguments ??? : $number"),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop("전달한 데이터입니다.");
          },
          child: const Text("Pop")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RouteTwoScreen(),

                // 생성자를 통해 파라미터를 넘기는 방법 말고도
                // settings 속성을 이용해서 RouteSetting 을 사용해 파라미터를 넘길 수 있다.
                settings: RouteSettings(arguments: "abcd ~~~ pop song")));
          },
          child: const Text("Two Push"))
    ]);
  }
}

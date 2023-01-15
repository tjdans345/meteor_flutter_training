import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteor_flutter_training/layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  // 페이지로 부터 파라미터를 전달 받을 수 있다.
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayOut(title: "Two Page", children: [
      Text(
        "arguments ??? : $arguments",
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Pop"))
    ]);
  }
}

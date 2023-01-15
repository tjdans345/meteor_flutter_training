import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meteor_flutter_training/component/text_component.dart';
import 'package:meteor_flutter_training/layout/main_layout.dart';
import 'package:meteor_flutter_training/screen/route_tr/route_screen/route_one_screen.dart';

class RouteMainScreen extends StatelessWidget {
  const RouteMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "Main Page", children: [
      ElevatedButton(
          // 이동한 페이지에서 다시 현재 페이지로 돌아올 때 파라미터를 전달받을 수 있다.
          // 그렇게하려면 async 를 사용해서 await 을 같이 사용해 주어야 한다.
          // 돌려받을 데이터 타입도 제네릭으로 설정가능하다.
          onPressed: () async {
            final result =
                await Navigator.of(context).push<String>(MaterialPageRoute(
              builder: (context) => const RouteOneScreen(number: 12345),
            ));

            print(result);
          },
          child: TextComponent(
            textContent: "push",
            textColor: Colors.white,
            textFontSize: 15.0,
            textFontWeight: FontWeight.w700,
          )),
      ElevatedButton(
          onPressed: () {},
          child: TextComponent(
            textContent: "MaybePop",
            textColor: Colors.white,
            textFontSize: 15.0,
            textFontWeight: FontWeight.w700,
          )),
      ElevatedButton(
          onPressed: () {},
          child: TextComponent(
            textContent: "CanPop",
            textColor: Colors.white,
            textFontSize: 15.0,
            textFontWeight: FontWeight.w700,
          ))
    ]);
  }
}

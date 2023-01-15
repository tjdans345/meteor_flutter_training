import 'package:flutter/material.dart';
import 'package:meteor_flutter_training/component/text_component.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("버튼"),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Elevated Button Style");
                },
                // ButtonStyle 은 상태에 따라서 제어하는 용도인가 보군 MaterialStateProperty 필수인듯
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.blueAccent),
                    // Material State
                    // hovered - 호버링 상태 ( 마우스 커서를 올려놓은 상태 )
                    // focused - 포커스 되었을 때 상태 (ex: 텍스트 핋드)
                    // pressed - 눌렀을 때
                    // dragged - 드래그 됐을 때
                    // selected - 선택 됬을 때
                    // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 되었을 때
                    // disabled - 비활성화 됐을 때
                    // error - 에러 상태
                    backgroundColor:
                        // MaterialStateProperty.all(Colors.pinkAccent),
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.blueAccent;
                      }
                      ;
                      return Colors.pinkAccent;
                    }),
                    foregroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.green;
                      }
                      return Colors.blueAccent;
                    })),
                child: const TextComponent(
                    textContent: "Elevated Button ButtonStyle",
                    textFontSize: 15.0,
                    textColor: Colors.white,
                    textFontWeight: FontWeight.w700),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Elevated Button StyleForm");
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.blueAccent,
                      elevation: 10,
                      foregroundColor: Colors.blueAccent,
                      backgroundColor: Colors.pinkAccent),
                  child: const TextComponent(
                    textContent: "Elevated Button StyleForm",
                    textFontSize: 15.0,
                    textColor: Colors.white,
                    textFontWeight: FontWeight.w700,
                  )),
              OutlinedButton(
                  onPressed: () {
                    print("OutlinedButton");
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                      shadowColor: MaterialStateProperty.all(Colors.pink),
                      elevation: MaterialStateProperty.all(10.0)),
                  child: const TextComponent(
                    textContent: "OutlinedButton",
                    textColor: Colors.white,
                    textFontSize: 15.0,
                    textFontWeight: FontWeight.w700,
                  )),
              TextButton(
                  onPressed: () {
                    print("TextButton");
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.greenAccent,
                  ),
                  child: const TextComponent(
                    textContent: "TextButton",
                    textColor: Colors.white,
                    textFontSize: 15.0,
                    textFontWeight: FontWeight.w700,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

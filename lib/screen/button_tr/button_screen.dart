import 'package:flutter/material.dart';

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
                style: ButtonStyle(
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
                }), foregroundColor:
                        MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.blueAccent;
                })),
                child: const Text(
                  "Elevated Button Style",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text(""))
            ],
          ),
        ),
      ),
    );
  }
}

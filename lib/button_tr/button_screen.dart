import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("버튼"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: )
          ],
        ),
      ),
    );
  }
}

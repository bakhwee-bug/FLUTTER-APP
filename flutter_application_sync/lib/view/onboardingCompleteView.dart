import 'package:flutter/material.dart';
import 'package:Sync/main.dart'; // MyApp 클래스가 있는 파일을 임포트

class OnboardingCompleteView extends StatelessWidget {
  const OnboardingCompleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('온보딩 완료'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 100),
            SizedBox(height: 16),
            Text(
              '박시윤님의 가입이 완료되었어요!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              '이제 싱크를 시작해볼까요?',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'Sync'),
                  ),
                );
              },
              child: Text('싱크 시작하기'),
            ),
          ],
        ),
      ),
    );
  }
}

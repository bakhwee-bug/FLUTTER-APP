import 'package:Sync/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:Sync/main.dart';
import 'package:Sync/const/styles.dart';

class OnboardingCompleteView extends StatelessWidget {
  const OnboardingCompleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 40), // 원하는 여백 설정
            child: Text(
              '박시윤님의 가입이 완료되었어요!',
              style: AppTextStyles.textBold16.copyWith(color: gray_50),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/ic_done.png',
                width: 130,
                height: 130,
              ),
              SizedBox(height: 20),
              Text(
                '이제 싱크를 시작해볼까요?',
                style: AppTextStyles.textBold22,
              ),
              Text(
                '김서윤님만을 위한 맞춤 싱크를 확인해 보세요.',
                style: AppTextStyles.textRegular16.copyWith(color: gray_50),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'Sync'),
                  ),
                );
              },
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: biscay_50,
                foregroundColor: white,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              child: Text(
                '싱크 시작하기',
                style: AppTextStyles.textBold16.copyWith(color: white),
              ),
            )),
      ]),
    );
  }
}

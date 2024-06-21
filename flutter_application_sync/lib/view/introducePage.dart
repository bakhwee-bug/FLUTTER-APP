import 'package:Sync/const/styles.dart';
import 'package:Sync/view/profileRegistrationView.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter/material.dart';
import '/const/colors.dart';

class Introducepage extends StatelessWidget {
  const Introducepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biscay_50, // 전체 배경색을 설정하여 우회
      body: OnBoardingSlider(
        finishButtonText: '싱크 시작하기',
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileRegistrationView(),
            ),
          );
        },
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: biscay_50,
        ),
        controllerColor: biscay_50,
        totalPage: 4,
        headerBackgroundColor: Colors.transparent, // 이 옵션을 제거
        pageBackgroundColor: white,
        background: [
          Image.asset(
            'assets/images/slide_1.png',
            width: MediaQuery.of(context).size.width,
          ),
          Image.asset(
            'assets/images/slide_2.png',
            width: MediaQuery.of(context).size.width,
          ),
          Image.asset(
            'assets/images/slide_3.png',
            width: MediaQuery.of(context).size.width,
          ),
          Image.asset(
            'assets/images/slide_4.png',
            width: MediaQuery.of(context).size.width,
          ),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('현재 모집중인 오디션 정보와\nHOT한 커버 노래를 확인해보세요!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.textBold18),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '앱에서 제공하는 다양한 오디션 정보를 확인하고,\n최근 인기 있는 커버 노래들을 불러보세요.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textRegular14.copyWith(color: gray_50),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('나에게 딱 맞는\n노래를 불러보세요!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.textBold18),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '온보딩에서 고른 음역대, 연령, 성별에 따라\n맞춤 노래를 추천받을 수 있어요',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textRegular14.copyWith(color: gray_50),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '부른 노래를\n저장하고 확인해보세요!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textBold18,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '언제든지 노래를 녹음하고 저장할 수 있는 기능을 통해,\n당신만의 음악 아카이브를 만들어보세요. ',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.textRegular14.copyWith(color: gray_50),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}

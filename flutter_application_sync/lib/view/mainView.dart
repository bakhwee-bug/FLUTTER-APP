import 'package:flutter/material.dart';
import 'package:flutter_application_sync/const/styles.dart';
import 'package:flutter_application_sync/components/sync_bar.dart';
import 'package:card_swiper/card_swiper.dart';
import '/const/colors.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        body: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Syncbar(barImage: 'assets/images/sync_logo.png'),
              Text(
                '박시윤님을 위한',
                style: AppTextStyles.textBold22, // 정의된 텍스트 스타일 사용
              ),
              Text(
                '싱크를 추천드려요!',
                style: AppTextStyles.textBold22, // 정의된 텍스트 스타일 사용
              ),
              SizedBox(
                height: 250, // Swiper의 높이를 지정
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "https://via.placeholder.com/288x188",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 10,
                  viewportFraction: 0.8,
                  scale: 0.9,
                ),
              ),
              //Appbar

              //songs
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(),
              ))
            ],
          ),
        ));
  }
}

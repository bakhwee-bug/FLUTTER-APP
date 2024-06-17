import 'package:Sync/components/hot_music.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Sync/const/styles.dart';
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
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: white,
                          ),
                          SvgPicture.asset('assets/images/bg_Ellipse.svg',
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.contain),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(23, 17, 23, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/ic_logo_white.svg'),
                                    SizedBox(height: 12),
                                    Text(
                                      '박시윤님을 위한',
                                      style: AppTextStyles.textBold22
                                          .copyWith(color: white), //
                                    ),
                                    Text(
                                      '싱크를 추천드려요!',
                                      style: AppTextStyles.textBold22
                                          .copyWith(color: white), //
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 250, // Swiper의 높이를 지정
                                child: Swiper(
                                  controller: SwiperController(),
                                  autoplay: true,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Stack(children: [
                                      Container(
                                        width: 330,
                                        height: 250,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.asset(
                                                      'assets/images/audition_ador.jpg')
                                                  .image,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      )
                                    ]);
                                  },
                                  itemCount: 10,
                                  viewportFraction: 0.8,
                                  scale: 0.9,
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(23, 25, 23, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('현재 HOT한',
                                        style: AppTextStyles.textBold22),
                                    Text('커버 노래 추천해드려요 👌',
                                        style: AppTextStyles.textBold22),
                                    createHotMusicItem(
                                      title: '재연 (An Encore)',
                                      artist: 'SHINee(샤이니)',
                                      album: 'Odd - The 4th Album',
                                      imagePath:
                                          'assets/images/Album_image_odd.jpg',
                                      context: context,
                                    ),
                                    createHotMusicItem(
                                      title: 'I’m Crying (Korean Ver.)',
                                      artist: '태민(TAEMIN)',
                                      album: 'SHINee(샤이니)',
                                      imagePath:
                                          'assets/images/Album_image_move.jpg',
                                      context: context,
                                    ),
                                    createHotMusicItem(
                                      title: '재연 (An Encore)',
                                      artist: 'SHINee(샤이니)',
                                      album: 'Odd - The 4th Album',
                                      imagePath:
                                          'assets/images/Album_image_borntobexx.jpg',
                                      context: context,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )))
            ],
          ),
        ));
  }
}

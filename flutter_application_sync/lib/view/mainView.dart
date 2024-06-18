import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Sync/const/styles.dart';
import 'package:card_swiper/card_swiper.dart';
import '/const/colors.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:Sync/models/song_model.dart';

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
                    SvgPicture.asset(
                      'assets/images/bg_Ellipse.svg',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.contain,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(23, 17, 23, 20),
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
                            itemBuilder: (BuildContext context, int index) {
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
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ]);
                            },
                            itemCount: 10,
                            viewportFraction: 0.8,
                            scale: 0.9,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(23, 25, 23, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('현재 HOT한', style: AppTextStyles.textBold22),
                              Text('커버 노래 추천해드려요 👌',
                                  style: AppTextStyles.textBold22),
                              _buildHotMusicList(context),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHotMusicList(BuildContext context) {
    return FutureBuilder(
      future: Hive.openBox<Song>('songs'),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        var box = Hive.box<Song>('songs');
        if (box.isEmpty) {
          return Center(child: Text('No songs available.'));
        }
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: box.length,
          itemBuilder: (context, index) {
            var song = box.getAt(index) as Song;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      song.albumPicture,
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song.songTitle,
                          style: AppTextStyles.textBold15,
                        ),
                        Text(
                          song.artistName,
                          style: AppTextStyles.textMedium12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

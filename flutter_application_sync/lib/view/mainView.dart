import 'package:Sync/components/hot_music.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:Sync/const/styles.dart';
import 'package:card_swiper/card_swiper.dart';
import '/const/colors.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:Sync/models/song_model.dart';
import 'package:url_launcher/url_launcher.dart';

class Audition {
  final String name;
  final String location;
  final String date;
  final String imageUrl;
  final String url;

  Audition({
    required this.name,
    required this.location,
    required this.date,
    required this.imageUrl,
    required this.url,
  });
}

final List<Audition> auditions = [
  Audition(
    name: '어도어 글로벌 오디션',
    location: '서울 종로',
    date: '4/22 (월) 오후 4시',
    imageUrl: 'assets/images/audition_ador.jpg',
    url: 'https://ador.world/audition.html',
  ),
  Audition(
    name: '네이버 글로벌 오디션',
    location: '서울 종로',
    date: '4/22 (월) 오후 4시',
    imageUrl: 'assets/images/audition_sm.jpg',
    url: 'https://audition.smtown.com/smngg_2024',
  ),
];

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late Box<Song> hotList;
  int _currentIndex = 0; // 현재 페이지 인덱스

  @override
  void initState() {
    super.initState();
    hotList = Hive.box<Song>('NewSong');
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
                                    .copyWith(color: white),
                              ),
                              Text(
                                '싱크를 추천드려요!',
                                style: AppTextStyles.textBold22
                                    .copyWith(color: white),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 250, // Swiper의 높이를 지정
                          child: Swiper(
                            autoplay: true,
                            onIndexChanged: (index) {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            itemBuilder: (BuildContext context, int index) {
                              final audition = auditions[index];
                              return GestureDetector(
                                onTap: () => _launchURL(audition.url),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 330,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(audition.imageUrl),
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    Container(
                                      width: 330,
                                      height: 250,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            gray_80,
                                            gray_80.withOpacity(0.15),
                                            Colors.transparent
                                          ],
                                          stops: [0.0, 0.4, 0.6],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          '${index + 1}/${auditions.length}',
                                          style: AppTextStyles.textRegular13
                                              .copyWith(color: white),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 16,
                                      left: 16,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            audition.name,
                                            style: AppTextStyles.textBold22
                                                .copyWith(color: white),
                                          ),
                                          SizedBox(height: 4),
                                          Row(
                                            children: [
                                              Icon(Icons.place,
                                                  color: Colors.white,
                                                  size: 16),
                                              SizedBox(width: 4),
                                              Text(
                                                audition.location,
                                                style: AppTextStyles
                                                    .textRegular14
                                                    .copyWith(color: white),
                                              ),
                                              SizedBox(width: 8),
                                              Icon(Icons.calendar_today,
                                                  color: Colors.white,
                                                  size: 16),
                                              SizedBox(width: 4),
                                              Text(
                                                audition.date,
                                                style: AppTextStyles
                                                    .textRegular14
                                                    .copyWith(color: white),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount: auditions.length,
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
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '커버 노래 ',
                                        style: AppTextStyles.textBold22
                                            .copyWith(color: biscay_50)),
                                    const TextSpan(
                                        text: '추천해드려요 👌',
                                        style: AppTextStyles.textBold22),
                                  ],
                                ),
                              ),
                              ValueListenableBuilder(
                                valueListenable: hotList.listenable(),
                                builder: (context, Box<Song> box, _) {
                                  if (box.values.isEmpty) {
                                    return Center(
                                      child: Text('No songs available',
                                          style: AppTextStyles.textBold22),
                                    );
                                  }

                                  return Column(
                                    children: box.values.map((song) {
                                      return createHotMusicItem(
                                        title: song.songTitle,
                                        artist: song.artistName,
                                        album: song.albumName,
                                        imagePath: song.albumPicture,
                                        lyrics: song.lyrics, // null 처리
                                        context: context,
                                      );
                                    }).toList(),
                                  );
                                },
                              ),
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
}

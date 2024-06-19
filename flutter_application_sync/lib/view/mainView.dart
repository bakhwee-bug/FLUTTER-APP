import 'package:Sync/components/hot_music.dart';
import 'package:Sync/models/profile_data.dart';
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
  final String eligibility;
  final String date;
  final String imageUrl;
  final String url;

  Audition({
    required this.name,
    required this.eligibility,
    required this.date,
    required this.imageUrl,
    required this.url,
  });
}

final List<Audition> auditions = [
  Audition(
    name: '어도어 글로벌 오디션',
    eligibility: '2005년~2011년생',
    date: '상시모집',
    imageUrl: 'assets/images/audition_ador.jpg',
    url: 'https://ador.world/audition.html',
  ),
  Audition(
    name: 'SMNGG 2024',
    eligibility: '2005년~2011년생',
    date: '~6월 22일',
    imageUrl: 'assets/images/audition_sm.jpg',
    url: 'https://audition.smtown.com/smngg_2024',
  ),
  Audition(
    name: '빅히트 오디션',
    eligibility: '2006년 이후 출생',
    date: '~8월 31일',
    imageUrl: 'assets/images/audition_bigheat.png',
    url: 'https://www.bighitaudition.com',
  ),
  Audition(
    name: 'Bpm 오디션',
    eligibility: '무관',
    date: '상시모집',
    imageUrl: 'assets/images/audition_bigplanet.jpg',
    url: 'http://www.bpment.co.kr/bpm/audition.do?lang=ko',
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
  final List<int> songIds = [3, 4, 5]; // 보여줄 songId 목록

  @override
  void initState() {
    super.initState();
    hotList = Hive.box<Song>('songsBox');
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
    final profileData = ProfileData.of(context);

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
                                '${profileData?.name ?? '사용자'}님을 위한',
                                style: AppTextStyles.textBold20
                                    .copyWith(color: white),
                              ),
                              Text(
                                '싱크를 추천드려요!',
                                style: AppTextStyles.textBold20
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
                                            style: AppTextStyles.textBold20
                                                .copyWith(color: white),
                                          ),
                                          SizedBox(height: 4),
                                          Row(
                                            children: [
                                              Icon(Icons.person,
                                                  color: Colors.white,
                                                  size: 16),
                                              SizedBox(width: 4),
                                              Text(
                                                audition.eligibility,
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
                              Text('현재 HOT한', style: AppTextStyles.textBold20),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '커버 노래 ',
                                        style: AppTextStyles.textBold20
                                            .copyWith(color: biscay_50)),
                                    const TextSpan(
                                        text: '추천해드려요 👌',
                                        style: AppTextStyles.textBold20),
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

                                  // songId에 해당하는 노래만 필터링
                                  final List<Song> filteredSongs = box.values
                                      .where((song) =>
                                          songIds.contains(song.songId))
                                      .toList();

                                  return Column(
                                    children: filteredSongs.map((song) {
                                      return createHotMusicItem(
                                        title: song.songTitle,
                                        artist: song.artistName,
                                        album: song.albumName,
                                        imagePath: song.albumPicture,
                                        lyrics: song.lyrics,
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

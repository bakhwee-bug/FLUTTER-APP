import 'package:flutter/material.dart';
import 'package:Sync/components/music.dart';
import 'package:Sync/components/music_box.dart';
import 'package:Sync/components/sync_bar.dart';
import 'package:Sync/const/styles.dart';
import '/const/colors.dart';
import 'package:Sync/models/profile_data.dart';

class RecordView extends StatefulWidget {
  const RecordView({super.key});

  @override
  _RecordViewState createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {
  List<Map<String, String>> musicData = [
    {
      "title": "해야 (HEYA)",
      "artist": "IVE",
      "album": "IVE SWITCH",
      "imagePath": "assets/images/Album_image_iveswitch.jpg",
    },
    {
      "title": "Says It",
      "artist": "KISS OF LIFE",
      "album": "Born to be XX",
      "imagePath": "assets/images/Album_image_borntobexx.jpg",
    },
    {
      "title": "OMG",
      "artist": "New Jeans",
      "album": "NJWMX",
      "imagePath": "assets/images/Album_image_NJWMX.jpg",
    },
    {
      "title": "고민중독",
      "artist": "QWER",
      "album": "MANITO",
      "imagePath": "assets/images/Album_image_MANITO.jpg",
    },
    {
      "title": "Better Things",
      "artist": "aespa",
      "album": "Better Things",
      "imagePath": "assets/images/Album_image_betterthings.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final profileData = ProfileData.of(context);

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            // AppBar
            Syncbar(barImage: 'assets/images/sync_logo.png'),
            // Musics
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(23, 8, 0, 20),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: profileData?.name ?? '사용자',
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '님, \n좋아요 누른 곡들이에요👍',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    MusicBox(
                      // title: '박시윤님\n이전에 직접 불렀던 곡들이에요 🎶',
                      musicList: _buildMusicList(context, musicData),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: profileData?.voiceRange ?? '음역대',
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '에 맞는 노래 추쳔드려요 👍',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    MusicBox(
                      // title: '음역대에 맞는 노래 추천해드려요 👍',
                      musicList: _buildMusicList(context, musicData),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  '${profileData?.age ?? '연령대'} ${profileData?.gender ?? '성별'}',
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '에게 인기 많은 곡 추천드려요 👍',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    MusicBox(
                      musicList: _buildMusicList(context, musicData),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Music> _buildMusicList(
      BuildContext context, List<Map<String, String>> musicData) {
    return musicData
        .map((data) => createMusicItem(
              title: data["title"]!,
              artist: data["artist"]!,
              album: data["album"]!,
              imagePath: data["imagePath"]!,
              context: context,
            ))
        .toList();
  }
}

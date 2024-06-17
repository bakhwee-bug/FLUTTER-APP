import 'package:flutter/material.dart';
import 'package:Sync/components/music.dart';
import 'package:Sync/components/music_box.dart';
import 'package:Sync/components/sync_bar.dart';
import '/const/colors.dart';

class RecordView extends StatelessWidget {
  const RecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            // AppBar
            Syncbar(barImage: 'assets/images/sync_logo.png'),
            // Musics
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    MusicBox(
                        title: '박시윤님\n이전에 직접 불렀던 곡들이에요 🎶',
                        musicList: _buildMusicList(context, [
                          {
                            "title": "해야 (HEYA)",
                            "artist": "IVE",
                            "album": "IVE SWITCH",
                            "imagePath":
                                "assets/images/Album_image_iveswitch.jpg",
                          },
                          {
                            "title": "Says It",
                            "artist": "KISS OF LIFE",
                            "album": "Born to be XX",
                            "imagePath":
                                "assets/images/Album_image_borntobexx.jpg",
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
                            "imagePath":
                                "assets/images/Album_image_betterthings.jpg",
                          },
                        ])),
                    MusicBox(
                        title: '음역대에 맞는 노래 추천해드려요 👍',
                        musicList: _buildMusicList(context, [
                          {
                            "title": "해야 (HEYA)",
                            "artist": "IVE",
                            "album": "IVE SWITCH",
                            "imagePath":
                                "assets/images/Album_image_iveswitch.jpg",
                          },
                          {
                            "title": "Says It",
                            "artist": "KISS OF LIFE",
                            "album": "Born to be XX",
                            "imagePath":
                                "assets/images/Album_image_borntobexx.jpg",
                          },
                          {
                            "title": "OMG",
                            "artist": "New Jeans",
                            "album": "NJWMX",
                            "imagePath": "assets/images/Album_image_NJWMX.jpg",
                          },
                          {
                            "title": "해야 (HEYA)",
                            "artist": "IVE",
                            "album": "IVE SWITCH",
                            "imagePath":
                                "assets/images/Album_image_iveswitch.jpg",
                          },
                          {
                            "title": "Better Things",
                            "artist": "aespa",
                            "album": "Better Things",
                            "imagePath":
                                "assets/images/Album_image_betterthings.jpg",
                          },
                        ])),
                    MusicBox(
                        title: '20대 여성에게 인기 많은 곡 추천드려요 👍',
                        musicList: _buildMusicList(context, [
                          {
                            "title": "해야 (HEYA)",
                            "artist": "IVE",
                            "album": "IVE SWITCH",
                            "imagePath":
                                "assets/images/Album_image_iveswitch.jpg",
                          },
                          {
                            "title": "Says It",
                            "artist": "KISS OF LIFE",
                            "album": "Born to be XX",
                            "imagePath":
                                "assets/images/Album_image_borntobexx.jpg",
                          },
                          {
                            "title": "OMG",
                            "artist": "New Jeans",
                            "album": "NJWMX",
                            "imagePath": "assets/images/Album_image_NJWMX.jpg",
                          },
                          {
                            "title": "해야 (HEYA)",
                            "artist": "IVE",
                            "album": "IVE SWITCH",
                            "imagePath":
                                "assets/images/Album_image_iveswitch.jpg",
                          },
                          {
                            "title": "Better Things",
                            "artist": "aespa",
                            "album": "Better Things",
                            "imagePath":
                                "assets/images/Album_image_betterthings.jpg",
                          },
                        ]))
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

import 'package:flutter/material.dart';
import 'package:flutter_application_sync/components/music.dart';
import 'package:flutter_application_sync/components/music_box.dart';
import 'package:flutter_application_sync/components/sync_bar.dart';
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
              //Appbar
              Syncbar(),
              //songs
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      MusicBox(title: '박시윤님\n이전에 직접 불렀던 곡들이에요 🎶', musicList: [
                        Music(
                            musicTitle: '해야 (HEYA)',
                            artistName: 'IVE',
                            albumName: 'IVE SWITCH',
                            albumPicture:
                                'assets/images/Album_image_iveswitch.jpg'),
                        Music(
                            musicTitle: 'Says It',
                            artistName: 'KISS OF LIFE',
                            albumName: 'Born to be XX',
                            albumPicture:
                                'assets/images/Album_image_borntobexx.jpg'),
                        Music(
                            musicTitle: 'OMG',
                            artistName: 'New Jeans',
                            albumName: 'NJWMX',
                            albumPicture:
                                'assets/images/Album_image_NJWMX.jpg'),
                        Music(
                            musicTitle: '고민중독',
                            artistName: 'QWER',
                            albumName: 'MANITO',
                            albumPicture:
                                'assets/images/Album_image_MANITO.jpg'),
                        Music(
                            musicTitle: 'Better Things',
                            artistName: 'aespa',
                            albumName: 'Better Things',
                            albumPicture:
                                'assets/images/Album_image_betterthings.jpg'),
                      ]),
                      MusicBox(title: '음역대에 맞는 노래 추천해드려요 👍', musicList: [
                        Music(
                            musicTitle: '해야 (HEYA)',
                            artistName: 'IVE',
                            albumName: 'IVE SWITCH',
                            albumPicture:
                                'assets/images/Album_image_iveswitch.jpg'),
                        Music(
                            musicTitle: 'Says It',
                            artistName: 'KISS OF LIFE',
                            albumName: 'Born to be XX',
                            albumPicture:
                                'assets/images/Album_image_borntobexx.jpg'),
                        Music(
                            musicTitle: 'OMG',
                            artistName: 'New Jeans',
                            albumName: 'NJWMX',
                            albumPicture:
                                'assets/images/Album_image_NJWMX.jpg'),
                        Music(
                            musicTitle: '해야 (HEYA)',
                            artistName: 'IVE',
                            albumName: 'IVE SWITCH',
                            albumPicture:
                                'assets/images/Album_image_iveswitch.jpg'),
                        Music(
                            musicTitle: 'Better Things',
                            artistName: 'aespa',
                            albumName: 'Better Things',
                            albumPicture:
                                'assets/images/Album_image_betterthings.jpg'),
                      ]),
                      MusicBox(title: '20대 여성에게 인기 많은 곡 추천드려요 👍', musicList: [
                        Music(
                            musicTitle: '해야 (HEYA)',
                            artistName: 'IVE',
                            albumName: 'IVE SWITCH',
                            albumPicture:
                                'assets/images/Album_image_iveswitch.jpg'),
                        Music(
                            musicTitle: 'Says It',
                            artistName: 'KISS OF LIFE',
                            albumName: 'Born to be XX',
                            albumPicture:
                                'assets/images/Album_image_borntobexx.jpg'),
                        Music(
                            musicTitle: 'OMG',
                            artistName: 'New Jeans',
                            albumName: 'NJWMX',
                            albumPicture:
                                'assets/images/Album_image_NJWMX.jpg'),
                        Music(
                            musicTitle: '해야 (HEYA)',
                            artistName: 'IVE',
                            albumName: 'IVE SWITCH',
                            albumPicture:
                                'assets/images/Album_image_iveswitch.jpg'),
                        Music(
                            musicTitle: 'Better Things',
                            artistName: 'aespa',
                            albumName: 'Better Things',
                            albumPicture:
                                'assets/images/Album_image_betterthings.jpg'),
                      ])
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

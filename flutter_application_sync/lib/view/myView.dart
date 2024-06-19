import 'package:flutter/material.dart';
import 'package:Sync/components/song.dart';
import 'package:Sync/components/song_box.dart';
import 'package:Sync/components/sync_bar.dart';
import '/const/colors.dart';
import 'package:Sync/const/styles.dart';

class MyView extends StatefulWidget {
  const MyView({super.key});

  @override
  _MyViewState createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  List<RecordData> songList = [
    RecordData(
      songTitle: 'Song 1',
      artistName: 'Artist 1',
      albumName: 'Album 1',
      albumPicture: 'assets/images/Album_image_iveswitch.jpg',
    ),
    RecordData(
      songTitle: 'Song 2',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
    RecordData(
      songTitle: 'Song 3',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
    RecordData(
      songTitle: 'Song 4',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
    RecordData(
      songTitle: 'Song 5',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            //Appbar
            Syncbar(barImage: 'assets/images/sync_logo.png'),
            //songs
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(23, 8, 23, 20),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: '박시윤',
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '님, \n노래 보관함이에요😻',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    SongBox(songList: songList)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

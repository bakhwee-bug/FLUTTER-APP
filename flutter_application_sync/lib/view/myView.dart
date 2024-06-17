import 'package:flutter/material.dart';
import 'package:Sync/components/song.dart';
import 'package:Sync/components/song_box.dart';
import 'package:Sync/components/sync_bar.dart';
import '/const/colors.dart';

class MyView extends StatelessWidget {
  List<Song> songList = [
    Song(
      songTitle: 'Song 1',
      artistName: 'Artist 1',
      albumName: 'Album 1',
      albumPicture: 'assets/images/Album_image_iveswitch.jpg',
    ),
    Song(
      songTitle: 'Song 2',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
    Song(
      songTitle: 'Song 3',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
    Song(
      songTitle: 'Song 4',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
    Song(
      songTitle: 'Song 5',
      artistName: 'Artist 2',
      albumName: 'Album 2',
      albumPicture: 'assets/images/Album_image_borntobexx.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              //Appbar
              Syncbar(barImage: 'assets/images/sync_logo.png'),
              //songs
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SongBox(title: '박시윤님, \n노래 보관함이에요 😻', songList: songList)
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}

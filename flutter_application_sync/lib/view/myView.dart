import 'package:flutter/material.dart';
import 'package:Sync/components/song.dart';
import 'package:Sync/components/song_box.dart';
import 'package:Sync/components/sync_bar.dart';
import '/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/models/profile_data.dart';
import 'dart:io';

class MyView extends StatefulWidget {
  final RecordData? newRecord;

  const MyView({super.key, this.newRecord});

  @override
  _MyViewState createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  List<RecordData> songList = [];

  @override
  void initState() {
    super.initState();
    if (widget.newRecord != null) {
      songList.add(widget.newRecord!);
    }
    _loadSongs();
  }

  void _loadSongs() {
    Directory dir = Directory('/sdcard/Download');
    List<FileSystemEntity> files = dir.listSync();
    List<RecordData> loadedSongs = [];

    for (var file in files) {
      if (file.path.endsWith('.wav')) {
        String fileName = file.uri.pathSegments.last;
        DateTime creationDate = File(file.path).lastModifiedSync();

        loadedSongs.add(RecordData(
          songTitle: fileName,
          artistName: 'Unknown Artist',
          albumName: creationDate.toIso8601String(),
          albumPicture: 'assets/images/Album_image_borntobexx.jpg',
          filePath: file.path,
        ));
      }
    }

    setState(() {
      songList.addAll(loadedSongs);
    });
  }

  @override
  Widget build(BuildContext context) {
    final profileData = ProfileData.of(context);

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
                              text: profileData?.name ?? '사용자',
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

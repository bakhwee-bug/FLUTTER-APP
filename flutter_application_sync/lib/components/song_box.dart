import 'package:flutter/material.dart';
import 'package:Sync/components/song.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/components/songs.dart';

import '/const/colors.dart';

class SongBox extends StatelessWidget {
  final List<RecordData> songList;

  const SongBox({
    super.key,
    required this.songList,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Songs(songList: songList),
        ],
      ),
    );
  }
}

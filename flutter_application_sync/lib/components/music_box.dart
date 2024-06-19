import 'package:flutter/material.dart';
import 'package:Sync/components/music.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/components/musics.dart';

import '/const/colors.dart';

class MusicBox extends StatelessWidget {
  final List<Music> musicList;

  const MusicBox({
    super.key,
    required this.musicList,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: white,
      padding: const EdgeInsets.fromLTRB(20, 8, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Musics(musicList: musicList),
        ],
      ),
    );
  }
}

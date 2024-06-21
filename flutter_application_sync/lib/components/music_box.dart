import 'package:flutter/material.dart';
import 'package:Sync/components/music.dart';
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
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      width: MediaQuery.of(context).size.width,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Musics(musicList: musicList),
        ],
      ),
    );
  }
}

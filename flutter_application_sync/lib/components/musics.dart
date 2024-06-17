import 'package:flutter/material.dart';
import 'package:Sync/components/music.dart';

class Musics extends StatelessWidget {
  final List<Music> musicList;

  const Musics({super.key, required this.musicList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: musicList,
        ));
  }
}

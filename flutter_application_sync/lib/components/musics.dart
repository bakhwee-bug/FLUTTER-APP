import 'package:flutter/material.dart';
import 'package:flutter_application_sync/components/music.dart'; // Music 모델을 포함하는 경로가 정확해야 합니다.

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

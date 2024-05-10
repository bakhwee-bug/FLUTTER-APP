import 'package:flutter/material.dart';
import 'package:flutter_application_sync/components/song.dart'; // Music 모델을 포함하는 경로가 정확해야 합니다.

class Songs extends StatelessWidget {
  final List<Song> songList;

  const Songs({super.key, required this.songList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: songList,
        ));
  }
}

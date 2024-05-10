import 'package:flutter/material.dart';
import 'package:flutter_application_sync/components/music.dart';
import 'package:flutter_application_sync/const/styles.dart';
import 'package:flutter_application_sync/components/musics.dart';

import '/const/colors.dart';

class MusicBox extends StatelessWidget {
  final String title;
  final List<Music> musicList;

  const MusicBox({
    super.key,
    required this.title,
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
          Text(
            title,
            style: AppTextStyles.textBold18, // 정의된 텍스트 스타일 사용
          ),
          Musics(musicList: musicList),
        ],
      ),
    );
  }
}

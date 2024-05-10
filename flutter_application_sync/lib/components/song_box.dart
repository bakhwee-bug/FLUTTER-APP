import 'package:flutter/material.dart';
import 'package:flutter_application_sync/components/song.dart';
import 'package:flutter_application_sync/const/styles.dart';
import 'package:flutter_application_sync/components/songs.dart';

import '/const/colors.dart';

class SongBox extends StatelessWidget {
  final String title;
  final List<Song> songList;

  const SongBox({
    super.key,
    required this.title,
    required this.songList,
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
            '${title}',
            style: AppTextStyles.textBold18, // 정의된 텍스트 스타일 사용
          ),
          Songs(songList: songList),
        ],
      ),
    );
  }
}

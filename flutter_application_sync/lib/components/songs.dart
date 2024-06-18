import 'package:flutter/material.dart';
import 'package:Sync/components/song.dart'; // Music 모델을 포함하는 경로가 정확해야 합니다.

class Songs extends StatelessWidget {
  final List<RecordData> songList;

  const Songs({super.key, required this.songList});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 21, 0, 0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
            childAspectRatio: 0.75,
          ),
          itemCount: songList.length,
          itemBuilder: (context, index) {
            return songList[index];
          },
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(), // 이 그리드뷰 자체의 스크롤을 막기 위해
        ));
  }
}

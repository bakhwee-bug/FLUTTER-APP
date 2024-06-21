import 'package:Sync/components/cover.dart';
import 'package:flutter/material.dart';

class Covers extends StatelessWidget {
  final List<CoverData> coverDataList;

  const Covers({super.key, required this.coverDataList});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 21, 0, 0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
            childAspectRatio: 0.77,
          ),
          itemCount: coverDataList.length,
          itemBuilder: (context, index) {
            return coverDataList[index];
          },
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(), // 이 그리드뷰 자체의 스크롤을 막기 위해
        ));
  }
}

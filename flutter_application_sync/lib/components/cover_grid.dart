import 'package:Sync/components/cover.dart';
import 'package:Sync/components/covers.dart';
import 'package:flutter/material.dart';

import '/const/colors.dart';

class CoverGrid extends StatelessWidget {
  final List<CoverData> coverDataList;

  const CoverGrid({
    super.key,
    required this.coverDataList,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Covers(coverDataList: coverDataList),
        ],
      ),
    );
  }
}

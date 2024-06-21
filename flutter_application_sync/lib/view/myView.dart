import 'package:Sync/components/cover.dart';
import 'package:Sync/components/cover_grid.dart';
import 'package:Sync/models/cover_model.dart';
import 'package:flutter/material.dart';
import 'package:Sync/components/sync_bar.dart';
import 'package:hive/hive.dart';
import '/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/models/profile_data.dart';

class MyView extends StatefulWidget {
  const MyView({super.key});

  @override
  _MyViewState createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  late Box<Cover> coverHiveList;
  late List<CoverData> coverDataList;

  @override
  void initState() {
    super.initState();
    coverHiveList = Hive.box<Cover>('coverBox2');
    _loadSongs();
  }

  void _loadSongs() {
    coverDataList = coverHiveList.values.map((cover) {
      return CoverData(
        madeData: cover.madeData,
        songTitle: cover.songTitle,
        artistName: cover.artistName,
        albumPicture: cover.imagePath,
        filePath: cover.coverPath,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final profileData = ProfileData.of(context);

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            // Appbar
            Syncbar(barImage: 'assets/images/sync_logo.png'),
            // Songs
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(23, 8, 23, 20),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: profileData?.name ?? '사용자',
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '님, \n노래 보관함이에요😻',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    CoverGrid(coverDataList: coverDataList)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

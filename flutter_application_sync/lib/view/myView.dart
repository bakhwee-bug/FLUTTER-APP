import 'package:Sync/components/cover.dart';
import 'package:Sync/components/cover_grid.dart';
import 'package:Sync/models/cover_model.dart';
import 'package:flutter/material.dart';
import 'package:Sync/components/sync_bar.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/models/profile_data.dart';
import 'package:Sync/view/PlayView.dart';
import 'dart:io';

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
    setState(() {
      coverDataList = [];
      List<Cover> coversToRemove = [];
      coverHiveList.values.forEach((cover) {
        if (File(cover.coverPath).existsSync()) {
          coverDataList.add(
            CoverData(
              madeData: cover.madeData,
              songTitle: cover.songTitle,
              artistName: cover.artistName,
              albumPicture: cover.imagePath,
              filePath: cover.coverPath,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayView(
                      recordingPath: cover.coverPath,
                      songId: cover.songId,
                    ),
                  ),
                );
              },
              onLongPress: () {
                _showDeleteDialog(cover);
              },
            ),
          );
        } else {
          coversToRemove.add(cover);
        }
      });

      // Remove covers with missing files from Hive box
      for (var cover in coversToRemove) {
        coverHiveList.delete(cover.coverId);
      }
    });
  }

  void _showDeleteDialog(Cover cover) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('삭제하시겠습니까?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('취소'),
          ),
          TextButton(
            onPressed: () {
              _deleteCover(cover);
              Navigator.of(context).pop();
            },
            child: Text('삭제'),
          ),
        ],
      ),
    );
  }

  void _deleteCover(Cover cover) {
    try {
      File(cover.coverPath).deleteSync();
    } catch (e) {
      print('Error deleting file: $e');
    }
    setState(() {
      coverDataList.removeWhere((c) => c.filePath == cover.coverPath);
    });
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

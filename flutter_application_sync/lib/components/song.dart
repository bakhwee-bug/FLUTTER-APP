import 'package:flutter/material.dart';
import 'package:flutter_application_sync/const/colors.dart';
import 'package:flutter_application_sync/const/styles.dart';

class Song extends StatelessWidget {
  final String songTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;

  const Song({
    super.key,
    required this.songTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              blurRadius: 7.1,
              color: Color(0x33000000),
              offset: Offset(
                0,
                0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    albumPicture,
                    width: 125,
                    height: 125,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  songTitle,
                  style: AppTextStyles.textBold16,
                ),
                Text(
                  artistName,
                  style: AppTextStyles.textMedium12,
                ),
                Text(
                  albumName,
                  style: AppTextStyles.textMedium10,
                ),
              ],
            )));
  }
}

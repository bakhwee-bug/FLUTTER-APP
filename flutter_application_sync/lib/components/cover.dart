import 'package:flutter/material.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';

class CoverData extends StatelessWidget {
  final String coverId;
  final String songTitle;
  final String artistName;
  final String albumPicture;
  final String filePath;

  const CoverData({
    super.key,
    required this.coverId,
    required this.songTitle,
    required this.artistName,
    required this.albumPicture,
    required this.filePath,
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
            padding: const EdgeInsets.fromLTRB(10, 12, 10, 5),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        albumPicture,
                        width: 130,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    )),
                Text(
                  songTitle,
                  style: AppTextStyles.textBold16,
                ),
                Text(
                  artistName,
                  style: AppTextStyles.textMedium12,
                ),
                Text(
                  coverId,
                  style: AppTextStyles.textMedium12,
                ),
              ],
            )));
  }
}

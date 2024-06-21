import 'package:flutter/material.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';

class CoverData extends StatelessWidget {
  final String madeData;
  final String songTitle;
  final String artistName;
  final String albumPicture;
  final String filePath;
  final VoidCallback onTap;
  final VoidCallback? onLongPress; // nullable로 변경

  const CoverData({
    super.key,
    required this.madeData,
    required this.songTitle,
    required this.artistName,
    required this.albumPicture,
    required this.filePath,
    required this.onTap,
    this.onLongPress, // 기본값을 null로 설정
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress, // null이면 아무 동작도 하지 않음
      child: Container(
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              blurRadius: 7.1,
              color: Color(0x33000000),
              offset: Offset(0, 0),
            ),
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
                ),
              ),
              Container(
                width: 130, // ClipRRect의 width와 동일하게 설정
                child: Text(
                  textAlign: TextAlign.center,
                  songTitle,
                  style: AppTextStyles.textBold16,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Container(
                width: 130, // ClipRRect의 width와 동일하게 설정
                child: Text(
                  textAlign: TextAlign.center,
                  artistName,
                  style: AppTextStyles.textMedium12,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              Container(
                width: 130, // ClipRRect의 width와 동일하게 설정
                child: Text(
                  textAlign: TextAlign.center,
                  madeData,
                  style: AppTextStyles.textMedium12,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/view/audioRecoderView.dart'; // Record 페이지를 위한 임포트 추가

class Music extends StatelessWidget {
  final String musicTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;
  final String lyrics;
  final VoidCallback _onTap;

  const Music({
    super.key,
    required this.musicTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
    required this.lyrics,
    required VoidCallback onTap,
  }) : _onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                albumPicture,
                width: 104,
                height: 104,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 104, // ClipRRect의 width와 동일하게 설정
              child: Text(
                musicTitle,
                style: AppTextStyles.textBold13,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Container(
              width: 104, // ClipRRect의 width와 동일하게 설정
              child: Text(
                artistName,
                style: AppTextStyles.textRegular13,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Music createMusicItem({
  required int songId,
  required String title,
  required String artist,
  required String album,
  required String imagePath,
  required String lyrics,
  required BuildContext context,
}) {
  return Music(
    musicTitle: title,
    artistName: artist,
    albumName: album,
    albumPicture: imagePath,
    lyrics: lyrics,
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Record(
            songId: songId,
          ),
        ),
      );
    },
  );
}

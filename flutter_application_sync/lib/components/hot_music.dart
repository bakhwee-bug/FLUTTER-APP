import 'package:flutter/material.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/view/audioRecoderView.dart';

class HotMusic extends StatelessWidget {
  final String musicTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;
  final String lyrics;
  final VoidCallback onTap;

  const HotMusic({
    super.key,
    required this.musicTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
    required this.onTap,
    required this.lyrics,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          width: double.infinity, // 전체 너비 사용
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  albumPicture,
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity, // 남은 전체 가로 길이를 차지하도록 설정
                      child: Text(
                        musicTitle,
                        style: AppTextStyles.textRegular16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity, // 남은 전체 가로 길이를 차지하도록 설정
                      child: Text(
                        artistName,
                        style: AppTextStyles.textRegular14,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

HotMusic createHotMusicItem({
  required int songId,
  required String title,
  required String artist,
  required String album,
  required String imagePath,
  required String lyrics,
  required BuildContext context,
}) {
  return HotMusic(
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

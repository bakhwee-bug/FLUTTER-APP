import 'package:flutter/material.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/view/record.dart';

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
          child: Row(
            mainAxisSize: MainAxisSize.max,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      musicTitle,
                      style: AppTextStyles.textRegular16,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      artistName,
                      style: AppTextStyles.textRegular14,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

HotMusic createHotMusicItem({
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
            musicTitle: title,
            artistName: artist,
            albumName: album,
            albumPicture: imagePath,
            lyrics: lyrics,
          ),
        ),
      );
    },
  );
}

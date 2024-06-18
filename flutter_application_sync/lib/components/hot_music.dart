import 'package:flutter/material.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/view/record.dart';

class HotMusic extends StatelessWidget {
  final String musicTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;
  final VoidCallback onTap;

  const HotMusic({
    super.key,
    required this.musicTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
    required this.onTap,
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
                      style: AppTextStyles.textBold15,
                    ),
                    Text(
                      artistName,
                      style: AppTextStyles.textMedium12,
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
  required BuildContext context,
}) {
  return HotMusic(
    musicTitle: title,
    artistName: artist,
    albumName: album,
    albumPicture: imagePath,
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Record(
            musicTitle: title,
            artistName: artist,
            albumName: album,
            albumPicture: imagePath,
            lyrics: 'Baby (baby), got me looking so crazy\n'
                '백점받는 daydream (daydream)\n'
                'Got me feeling you 너도 말해줄래?\n'
                '누가 내게 귀엽다 봐줄때는 답할 넌\n'
                'Maybe you could be the one (one)\n'
                '난 만약만 한번 I\'m not looking for just fun\n'
                'Maybe I could be the one\n'
                'Oh, baby (baby)\n'
                '예민하다 내 lately (lately)\n'
                '넌 없이는 매일 매일이 yeah (매일이 yeah)\n'
                '채미 없어, 어쩌지?\n'
                'Baby (baby), got me looking so crazy\n'
                '백점받는 daydream (daydream)\n'
                'Got me feeling you 너도 말해줄래?\n'
                '누가 내게 귀엽다 봐줄때는 답할 넌\n'
                'Maybe you could be the one (one)\n'
                '난 만약만 한번 I\'m not looking for just fun\n'
                'Maybe I could be the one\n'
                'Oh, baby (baby)\n'
                '예민하다 내 lately (lately)\n'
                '넌 없이는 매일 매일이 yeah (매일이 yeah)\n'
                '채미 없어, 어쩌지?',
          ),
        ),
      );
    },
  );
}

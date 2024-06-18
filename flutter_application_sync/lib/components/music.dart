// music.dart
import 'package:flutter/material.dart';
import 'package:Sync/const/styles.dart';
import 'package:Sync/view/record.dart'; // Record 페이지를 위한 임포트 추가

class Music extends StatelessWidget {
  final String musicTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;

  const Music({
    super.key,
    required this.musicTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
    required VoidCallback onTap,
  }) : _onTap = onTap;

  final VoidCallback _onTap;

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
            Text(
              musicTitle,
              style: AppTextStyles.textBold13,
            ),
            Text(
              artistName,
              style: AppTextStyles.textRegular13,
            ),
          ],
        ),
      ),
    );
  }
}

Music createMusicItem({
  required String title,
  required String artist,
  required String album,
  required String imagePath,
  required BuildContext context,
}) {
  return Music(
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
                  '채미 없어, 어쩌지?'),
        ),
      );
    },
  );
}

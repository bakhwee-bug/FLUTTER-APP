import 'package:flutter/material.dart';
import 'package:flutter_application_sync/const/styles.dart';

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
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
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
        ));
  }
}

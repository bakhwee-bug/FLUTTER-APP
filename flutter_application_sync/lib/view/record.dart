import 'package:flutter/material.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';

class Record extends StatelessWidget {
  final String musicTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;
  final String lyrics;

  const Record({
    super.key,
    required this.musicTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
    required this.lyrics,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/ic_arrow_forward.png'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        albumPicture,
                        width: 104,
                        height: 104,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            musicTitle,
                            style: AppTextStyles.textBold18,
                          ),
                          Text(
                            artistName,
                            style: AppTextStyles.textMedium18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(albumPicture),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.9),
                      BlendMode.hardLight,
                    ),
                    //opacity: 30,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 100),
                    child: Text(
                      lyrics,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.textBold18gray,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/images/ic_record_start.png'),
        backgroundColor: Colors.transparent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

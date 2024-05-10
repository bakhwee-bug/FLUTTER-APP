import 'package:flutter/material.dart';
import 'package:flutter_application_sync/const/colors.dart';
import 'package:flutter_application_sync/const/styles.dart';

class Record extends StatelessWidget {
  final String musicTitle;
  final String artistName;
  final String albumName;
  final String albumPicture;

  const Record({
    super.key,
    required this.musicTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
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
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 100),
                    child: Text(
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
                      '채미 없어, 어쩌지?'
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

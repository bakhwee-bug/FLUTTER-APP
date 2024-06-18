import 'package:Sync/view/onboardingCompleteView.dart';
import 'package:flutter/material.dart';
import '/const/colors.dart';

class VoiceRangeSelectionView extends StatelessWidget {
  const VoiceRangeSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/images/ic_arrow_forward.png',
            width: 24,
            height: 24,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('음역대를 골라주세요.'),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text('소프라노 (Soprano): C4 (중앙 C) ~ C6'),
                  leading: Radio(
                    value: '소프라노',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Text('메조소프라노 (Mezzo-Soprano): A3 ~ A5'),
                  leading: Radio(
                    value: '메조소프라노',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Text('알토 (Alto): F3 ~ F5'),
                  leading: Radio(
                    value: '알토',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Text('테너 (Tenor): C3 ~ B4'),
                  leading: Radio(
                    value: '테너',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Text('바리톤 (Baritone): G2 ~ G4'),
                  leading: Radio(
                    value: '바리톤',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
                ListTile(
                  title: Text('베이스 (Bass): E2 ~ E4'),
                  leading: Radio(
                    value: '베이스',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingCompleteView(),
                  ),
                );
              },
              child: Text('다음'),
            ),
          ],
        ),
      ),
    );
  }
}

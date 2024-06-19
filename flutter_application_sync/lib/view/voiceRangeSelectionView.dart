import 'package:Sync/const/styles.dart';
import 'package:Sync/view/onboardingCompleteView.dart';
import 'package:flutter/material.dart';
import '/const/colors.dart';

class VoiceRangeSelectionView extends StatefulWidget {
  final String name;
  final String gender;
  final String age;

  const VoiceRangeSelectionView({
    Key? key,
    required this.name,
    required this.gender,
    required this.age,
  }) : super(key: key);

  @override
  _VoiceRangeSelectionViewState createState() =>
      _VoiceRangeSelectionViewState();
}

class _VoiceRangeSelectionViewState extends State<VoiceRangeSelectionView> {
  String? _selectedVoiceRange = "-1";
  bool get _isButtonEnabled {
    return _selectedVoiceRange != "-1";
  }

  void _showPopup() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true, // 바깥 영역을 터치하면 대화상자가 닫히도록 설정
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: Duration(milliseconds: 300), // 애니메이션 지속 시간 설정
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return Center(
            child: AlertDialog(
          backgroundColor: white,
          title: Text(
            '음역대를 고르기 어렵다면?',
            style: AppTextStyles.textBold18,
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '음역대를 선택하기 어려운 분들을 위해\n각 음역대에 맞는 노래를 알려드려요!',
                  style: AppTextStyles.textRegular14,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  '소프라노 (Soprano): C4 ~ C6',
                  style: AppTextStyles.textBold14,
                ),
                Text(
                  '• 아이유 - 좋은 날\n• 태연 - 만약에',
                  style: AppTextStyles.textRegular14,
                ),
                SizedBox(height: 8),
                Text(
                  '메조소프라노 (Mezzo-Soprano): A3 ~ A5',
                  style: AppTextStyles.textBold14,
                ),
                Text(
                  '• 백예린 - 그건 아마 우리의 잘못은 아닐 거야\n• 헤이즈 - 비도 오고 그래서',
                  style: AppTextStyles.textRegular14,
                ),
                SizedBox(height: 8),
                Text(
                  '알토 (Alto): F3 ~ F5',
                  style: AppTextStyles.textBold14,
                ),
                Text(
                  '• 이하이 - 한숨\n• 에일리 - 보여줄게',
                  style: AppTextStyles.textRegular14,
                ),
                SizedBox(height: 8),
                Text(
                  '테너 (Tenor): C3 ~ B4',
                  style: AppTextStyles.textBold14,
                ),
                Text(
                  '• 김범수 - 보고 싶다\n• 임재범 - 고해',
                  style: AppTextStyles.textRegular14,
                ),
                SizedBox(height: 8),
                Text(
                  '바리톤 (Baritone): G2 ~ G4',
                  style: AppTextStyles.textBold14,
                ),
                Text(
                  '• 임창정 - 소주 한 잔\n• 이문세 - 옛사랑',
                  style: AppTextStyles.textRegular14,
                ),
                SizedBox(height: 8),
                Text(
                  '베이스 (Bass): E2 ~ E4',
                  style: AppTextStyles.textBold14,
                ),
                Text(
                  '• 최백호 - 낭만에 대하여\n• 김동률 - 오래된 노래',
                  style: AppTextStyles.textRegular14,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text('닫기',
                  style:
                      AppTextStyles.textRegular14.copyWith(color: biscay_50)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn, // 나타날 때의 커브 조정
            ),
          ),
          child: ScaleTransition(
            scale: Tween<double>(begin: 1.0, end: 0.0).animate(
              CurvedAnimation(
                parent: secondaryAnimation,
                curve: Curves.linear, // 사라질 때의 커브 조정
              ),
            ),
            child: child,
          ),
        );
      },
    );
  }

  Widget _buildCustomChip(String label, String value) {
    bool isSelected = _selectedVoiceRange == value;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedVoiceRange = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: isSelected ? primaryColor : Colors.transparent,
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          label,
          style: isSelected
              ? AppTextStyles.textBold16.copyWith(color: primaryColor)
              : AppTextStyles.textRegular16,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gray_5,
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
        body: Column(children: [
          Expanded(
            child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '음역대를 골라주세요.',
                      style: AppTextStyles.textBold22,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        _buildCustomChip(
                            '소프라노 (Soprano): C4 (중앙 C) ~ C6', '소프라노'),
                        SizedBox(height: 10),
                        _buildCustomChip(
                            '메조소프라노 (Mezzo-Soprano): A3 ~ A5', '메조소프라노'),
                        SizedBox(height: 10),
                        _buildCustomChip('알토 (Alto): F3 ~ F5', '알토'),
                        SizedBox(height: 10),
                        _buildCustomChip('테너 (Tenor): C3 ~ B4', '테너'),
                        SizedBox(height: 10),
                        _buildCustomChip('바리톤 (Baritone): G2 ~ G4', '바리톤'),
                        SizedBox(height: 10),
                        _buildCustomChip('베이스 (Bass): E2 ~ E4', '베이스'),
                      ],
                    ),
                  ],
                )),
          ),
          GestureDetector(
            onTap: _showPopup,
            child: Text(
              '음역대를 측정하는 법이 궁금하다면?',
              style: AppTextStyles.textRegular13.copyWith(
                  color: gray_50, decoration: TextDecoration.underline),
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: TextButton(
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardingCompleteView(
                              name: widget.name,
                              gender: widget.gender,
                              age: widget.age,
                              voiceRange: _selectedVoiceRange!,
                            ),
                          ),
                        );
                      }
                    : null,
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: _isButtonEnabled ? biscay_50 : biscay_10,
                  foregroundColor: white,
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                child: Text(
                  '다음',
                  style: AppTextStyles.textBold16.copyWith(color: white),
                ),
              )),
        ]));
  }
}

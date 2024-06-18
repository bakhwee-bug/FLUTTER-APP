import 'package:Sync/const/styles.dart';
import 'package:Sync/view/onboardingCompleteView.dart';
import 'package:flutter/material.dart';
import '/const/colors.dart';

class VoiceRangeSelectionView extends StatefulWidget {
  const VoiceRangeSelectionView({Key? key}) : super(key: key);

  @override
  _VoiceRangeSelectionViewState createState() =>
      _VoiceRangeSelectionViewState();
}

class _VoiceRangeSelectionViewState extends State<VoiceRangeSelectionView> {
  String? _selectedVoiceRange = "-1";
  bool get _isButtonEnabled {
    return _selectedVoiceRange != "-1";
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
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextButton(
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardingCompleteView(),
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

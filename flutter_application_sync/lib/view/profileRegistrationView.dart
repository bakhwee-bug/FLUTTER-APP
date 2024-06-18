import 'package:Sync/const/styles.dart';
import 'package:Sync/view/voiceRangeSelectionView.dart';
import 'package:flutter/material.dart';
import '/const/colors.dart';

class ProfileRegistrationView extends StatefulWidget {
  const ProfileRegistrationView({Key? key}) : super(key: key);

  @override
  _ProfileRegistrationViewState createState() =>
      _ProfileRegistrationViewState();
}

class _ProfileRegistrationViewState extends State<ProfileRegistrationView> {
  int _selectedGender = -1;
  int _selectedAge = -1;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool get _isButtonEnabled {
    return _textController.text.isNotEmpty &&
        _selectedGender != -1 &&
        _selectedAge != -1;
  }

  Widget _buildCustomChip(
      String label, int index, bool isSelected, Function(int) onSelected) {
    return GestureDetector(
      onTap: () {
        onSelected(index);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 100,
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
        child: Text(
          label,
          style: isSelected
              ? AppTextStyles.textBold14.copyWith(color: primaryColor)
              : AppTextStyles.textRegular14,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 키보드 숨기기 및 포커스 해제
      },
      child: Scaffold(
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
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '환영합니다! \n싱크 프로필을 등록해볼까요?',
                style: AppTextStyles.textBold22,
              ),
              SizedBox(height: 16),
              Text(
                '이름',
                style: AppTextStyles.textRegular14,
              ),
              TextField(
                controller: _textController,
                focusNode: _focusNode,
                onChanged: (text) {
                  setState(() {});
                },
                maxLength: 10,
                maxLines: 1,
                decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: biscay_50),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: biscay_50),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: sub3),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: _textController.text.length > 10
                              ? sub3
                              : biscay_50),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              SizedBox(height: 16),
              Text(
                '성별',
                style: AppTextStyles.textRegular14,
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildCustomChip('남자', 0, _selectedGender == 0, (index) {
                    setState(() {
                      _selectedGender = index;
                    });
                  }),
                  _buildCustomChip('여자', 1, _selectedGender == 1, (index) {
                    setState(() {
                      _selectedGender = index;
                    });
                  }),
                  _buildCustomChip('상관없음', 2, _selectedGender == 2, (index) {
                    setState(() {
                      _selectedGender = index;
                    });
                  }),
                ],
              ),
              SizedBox(height: 16),
              Text(
                '연령',
                style: AppTextStyles.textRegular14,
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildCustomChip('10대 미만', 0, _selectedAge == 0, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('10대', 1, _selectedAge == 1, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('20대', 2, _selectedAge == 2, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('30대', 3, _selectedAge == 3, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('40대', 4, _selectedAge == 4, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('50대', 5, _selectedAge == 5, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('60대 이상', 6, _selectedAge == 6, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                  _buildCustomChip('상관없음', 7, _selectedAge == 7, (index) {
                    setState(() {
                      _selectedAge = index;
                    });
                  }),
                ],
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: _isButtonEnabled
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VoiceRangeSelectionView(),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

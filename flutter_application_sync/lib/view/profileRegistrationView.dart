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

  String getGenderString(int index) {
    switch (index) {
      case 0:
        return '남성';
      case 1:
        return '여성';
      case 2:
        return '남녀';
      default:
        return '';
    }
  }

  String getAgeString(int index) {
    switch (index) {
      case 0:
        return '10대 미만';
      case 1:
        return '10대';
      case 2:
        return '20대';
      case 3:
        return '30대';
      case 4:
        return '40대';
      case 5:
        return '50대';
      case 6:
        return '60대 이상';
      case 7:
        return '전연령대';
      default:
        return '';
    }
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
          body: Column(children: [
            Expanded(
              child: SingleChildScrollView(
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
                      cursorColor: biscay_50,
                      controller: _textController,
                      focusNode: _focusNode,
                      onChanged: (text) {
                        setState(() {});
                      },
                      maxLength: 10,
                      maxLines: 1,
                      style: AppTextStyles.textRegular16,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: white,
                        focusColor: biscay_50,
                        isDense: true,
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: biscay_50),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: biscay_50),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
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
                        _buildCustomChip('남성', 0, _selectedGender == 0,
                            (index) {
                          setState(() {
                            _selectedGender = index;
                          });
                        }),
                        _buildCustomChip('여성', 1, _selectedGender == 1,
                            (index) {
                          setState(() {
                            _selectedGender = index;
                          });
                        }),
                        _buildCustomChip('상관없음', 2, _selectedGender == 2,
                            (index) {
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
                        _buildCustomChip('10대 미만', 0, _selectedAge == 0,
                            (index) {
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
                        _buildCustomChip('60대 이상', 6, _selectedAge == 6,
                            (index) {
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
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: TextButton(
                  onPressed: _isButtonEnabled
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VoiceRangeSelectionView(
                                name: _textController.text,
                                gender: getGenderString(_selectedGender),
                                age: getAgeString(_selectedAge),
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
          ])),
    );
  }
}

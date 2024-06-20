import 'package:flutter/material.dart';

class ProfileData extends InheritedWidget {
  final String name;
  final String gender;
  final String age;
  final String voiceRange;
  final List<int> likedSongs; // 좋아요 누른 곡의 ID 목록 추가

  ProfileData({
    required Widget child,
    required this.name,
    required this.gender,
    required this.age,
    required this.voiceRange,
    required this.likedSongs,
  }) : super(child: child);

  static ProfileData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProfileData>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

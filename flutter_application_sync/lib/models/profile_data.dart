import 'package:flutter/material.dart';

class ProfileData extends InheritedWidget {
  final String name;
  final String gender;
  final String age;
  final String voiceRange;

  ProfileData({
    required Widget child,
    required this.name,
    required this.gender,
    required this.age,
    required this.voiceRange,
  }) : super(child: child);

  static ProfileData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ProfileData>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

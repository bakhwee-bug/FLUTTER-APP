import 'package:flutter/material.dart';

class UserInfo {
  final String name;
  final int gender;
  final int age;
  final String voiceRange;

  UserInfo({
    required this.name,
    required this.gender,
    required this.age,
    required this.voiceRange,
  });
}

class UserInfoProvider extends InheritedWidget {
  final UserInfo userInfo;

  UserInfoProvider({
    required Widget child,
    required this.userInfo,
  }) : super(child: child);

  static UserInfoProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UserInfoProvider>();
  }

  @override
  bool updateShouldNotify(UserInfoProvider oldWidget) {
    return oldWidget.userInfo != userInfo;
  }
}

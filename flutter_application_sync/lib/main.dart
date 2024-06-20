import 'package:Sync/models/song_model.dart';
import 'package:Sync/view/ProfileRegistrationView.dart';
import 'package:flutter/material.dart';
import 'package:Sync/view/mainView.dart';
import 'package:Sync/view/myView.dart';
import 'package:Sync/view/recordView.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:Sync/models/profile_data.dart';
import '/const/colors.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SongAdapter());
  var box = await Hive.openBox<Song>('newBox');
  await box.clear(); // 기존 데이터 삭제
  var songs = Song.createDummySongList();
  for (var song in songs) {
    await box.add(song);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Sync',
      debugShowCheckedModeBanner: false,
      home: const ProfileRegistrationView(), // 시작 화면 변경
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final String name;
  final String gender;
  final String age;
  final String voiceRange;

  const MyHomePage({
    super.key,
    required this.title,
    required this.name,
    required this.gender,
    required this.age,
    required this.voiceRange,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _navIndex() {
    return [
      MainView(),
      RecordView(),
      MyView(),
    ];
  }

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProfileData(
      name: widget.name,
      gender: widget.gender,
      age: widget.age,
      voiceRange: widget.voiceRange,
      likedSongs: [],
      child: Scaffold(
        body: _navIndex().elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, -1),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              fixedColor: primaryColor,
              unselectedItemColor: unselectedColor,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_home.png')),
                  label: '홈',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_record.png')),
                  label: '녹음실',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ic_my.png')),
                  label: '저장실',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onNavTapped,
            ),
          ),
        ),
      ),
    );
  }
}

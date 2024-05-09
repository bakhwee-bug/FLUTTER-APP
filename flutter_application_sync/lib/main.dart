import 'package:flutter/material.dart';
import 'package:flutter_application_sync/view/mainView.dart';
import 'package:flutter_application_sync/view/myView.dart';
import 'package:flutter_application_sync/view/recordView.dart';
import '/const/colors.dart';

void main() {
  runApp(const MyApp());
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
      home: const MyHomePage(title: 'Sync'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _navIndex = [
    MainView(),
    RecordView(),
    MyView(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navIndex.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // 그림자 색상과 투명도 설정
              spreadRadius: 0,
              blurRadius: 10, // 흐림 정도
              offset: Offset(0, -1), // 그림자 방향 조절 (x, y)
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), // 상단 왼쪽 모서리 둥글기
            topRight: Radius.circular(20), // 상단 오른쪽 모서리 둥글기
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white, // 네비게이션 바 배경색을 흰색으로 설정
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
    );
  }
}

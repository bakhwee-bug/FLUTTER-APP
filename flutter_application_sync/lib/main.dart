import 'package:flutter/material.dart';
import '/const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _selectedIndex = 0;

  final List<Widget> _navIndex = [
    MainPage(),
    RecordPage(),
    MyPage(),
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
                icon: Icon(Icons.home),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: '녹음실',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
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

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainState();
}

class MainState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => RecordState();
}

class RecordState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => MyState();
}

class MyState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

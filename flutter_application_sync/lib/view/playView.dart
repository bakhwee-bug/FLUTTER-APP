import 'package:Sync/models/song_model.dart';
import 'package:flutter/material.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:hive/hive.dart';

class PlayView extends StatefulWidget {
  final String recordingPath;
  final int songId;
  const PlayView({
    super.key,
    required this.recordingPath,
    required this.songId,
  });
  @override
  _PlayViewState createState() => _PlayViewState();
}

class _PlayViewState extends State<PlayView> {
  FlutterSoundPlayer? _player;
  bool _isPlaying = false;
  late Box<Song> songBox;
  late Song song;

  @override
  void initState() {
    super.initState();
    _player = FlutterSoundPlayer();
    _initializePlayer();
    songBox = Hive.box<Song>('newBox');
    song = songBox.get(widget.songId - 1)!;
  }

  Future<void> _initializePlayer() async {
    await _player!.openPlayer();
  }

  Future<void> _startPlaying() async {
    try {
      await _player!.startPlayer(
        fromURI: widget.recordingPath,
        whenFinished: () {
          setState(() {
            _isPlaying = false;
          });
        },
      );
      setState(() {
        _isPlaying = true;
      });
    } catch (e) {
      print('Error starting player: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error starting player: $e')),
      );
    }
  }

  Future<void> _stopPlaying() async {
    try {
      await _player!.stopPlayer();
      setState(() {
        _isPlaying = false;
      });
    } catch (e) {
      print('Error stopping player: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error stopping player: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/ic_arrow_forward.png'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        song.albumPicture,
                        width: 104,
                        height: 104,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 140, // 남은 전체 가로 길이를 차지하도록 설정
                            child: Text(
                              song.songTitle,
                              style: AppTextStyles.textBold18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Container(
                            width: 140, // 남은 전체 가로 길이를 차지하도록 설정
                            child: Text(
                              song.artistName,
                              style: AppTextStyles.textMedium18,
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: _isPlaying ? _stopPlaying : _startPlaying,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent, // 배경색 투명
                        shadowColor: Colors.black, // 그림자 색상
                        elevation: 5, // 그림자 높이
                        padding: EdgeInsets.zero, // 패딩 제거
                        minimumSize: Size(48, 48), // 버튼 최소 크기 설정
                      ),
                      child: Image.asset(
                        _isPlaying
                            ? 'assets/images/ic_record_stop.png'
                            : 'assets/images/ic_play_start.png',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(song.albumPicture),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.9),
                      BlendMode.hardLight,
                    ),
                    //opacity: 30,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 100),
                    child: Text(
                      song.lyrics,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.textBold18gray,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

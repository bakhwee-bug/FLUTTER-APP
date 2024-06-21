import 'package:Sync/components/song.dart';
import 'package:Sync/models/cover_model.dart';
import 'package:Sync/view/audioRecoderView.dart'; // Record 화면 경로에 맞게 수정
import 'package:Sync/view/myView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'dart:io';
import 'package:Sync/models/song_model.dart';
import 'package:hive/hive.dart';

class AudioPlayerPage extends StatefulWidget {
  final String recordingPath;
  final int songId;
  const AudioPlayerPage({
    super.key,
    required this.recordingPath,
    required this.songId,
  });

  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  FlutterSoundPlayer? _player;
  bool _isPlaying = false;
  late Box<Song> songBox;
  late Song song;
  var coverList = Hive.box<Cover>('coverBox');

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

  Future<void> _saveRecording() async {
    try {
      // 노래 ID를 사용하여 파일 이름 생성
      String newPath = '/sdcard/Download/song_${widget.songId}.wav';
      File(widget.recordingPath).copySync(newPath);
      File(widget.recordingPath).deleteSync();

      // RecordData 객체 생성
      RecordData newRecord = RecordData(
        songTitle: song.songTitle,
        artistName: song.artistName,
        albumName: DateTime.now().toIso8601String(),
        albumPicture: song.albumPicture,
        filePath: newPath,
      );

      setState(() {
        coverList.put(
          DateTime.now().toIso8601String(), // 키 값으로 사용
          Cover(
            coverId: DateTime.now().toIso8601String(),
            songTitle: song.songTitle,
            artistName: song.artistName,
            imagePath: song.albumPicture,
            coverPath: newPath,
          ),
        );
      });
      // MyView 화면으로 이동
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MyView(newRecord: newRecord),
        ),
      );
    } catch (e) {
      print('Error saving recording: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving recording: $e')),
      );
    }
  }

  @override
  void dispose() {
    _player!.closePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                          Text(
                            song.songTitle,
                            style: AppTextStyles.textBold18,
                          ),
                          Text(
                            song.artistName,
                            style: AppTextStyles.textMedium18,
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
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: _saveRecording,
                    child: Text('Save Recording'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Record Again'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

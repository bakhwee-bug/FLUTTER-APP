import 'package:Sync/view/audioRecoderView.dart'; // Record 화면 경로에 맞게 수정
import 'package:Sync/view/myView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'dart:io';

class AudioPlayerPage extends StatefulWidget {
  final String recordingPath;

  const AudioPlayerPage({super.key, required this.recordingPath});

  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  FlutterSoundPlayer? _player;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _player = FlutterSoundPlayer();
    _initializePlayer();
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
      String newPath = '/sdcard/Download/song_id.wav';
      File(widget.recordingPath).copySync(newPath);
      File(widget.recordingPath).deleteSync();

      // MyView 화면으로 이동
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MyView(),
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
            Text('Recorded Audio'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isPlaying ? _stopPlaying : _startPlaying,
              child: Text(_isPlaying ? 'Stop Playing' : 'Play Recording'),
            ),
            SizedBox(height: 20),
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
    );
  }
}

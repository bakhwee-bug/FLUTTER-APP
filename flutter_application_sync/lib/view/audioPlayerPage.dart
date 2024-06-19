import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

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

  @override
  void dispose() {
    _player!.closePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recorded Audio Player'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
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
          ],
        ),
      ),
    );
  }
}

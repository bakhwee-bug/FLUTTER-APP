import 'package:Sync/models/liked_song_model.dart';
import 'package:Sync/view/audioPlayerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:Sync/const/colors.dart';
import 'package:Sync/const/styles.dart';
import 'package:hive/hive.dart';
import 'package:Sync/models/song_model.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_animated_icons/flutter_animated_icons.dart';

class Record extends StatefulWidget {
  final int songId;

  const Record({super.key, required this.songId});

  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> with SingleTickerProviderStateMixin {
  FlutterSoundRecorder? _recorder;
  bool _isRecording = false;
  String _recordingPath = '';
  late Box<Song> songBox;
  late Song song;
  late Box<LikedSong> likedSongsBox;
  late bool isLiked;
  late AnimationController _favoriteController;

  @override
  void initState() {
    super.initState();
    _recorder = FlutterSoundRecorder();
    _initializeRecorder();
    songBox = Hive.box<Song>('newBox');
    likedSongsBox = Hive.box<LikedSong>('likedSongsBox');
    song = songBox.get(widget.songId - 1)!;
    isLiked = likedSongsBox.values
        .any((likedSong) => likedSong.songId == song.songId);
    _favoriteController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      value: isLiked ? 0.6 : 0.0,
    );
  }

  Future<void> _initializeRecorder() async {
    await _recorder!.openRecorder();
    if (await Permission.microphone.request().isGranted &&
        await Permission.storage.request().isGranted) {
      // Permissions granted
    } else {
      // Permissions not granted
      _showSnackbar("Permissions not granted");
    }
  }

  Future<void> _startRecording() async {
    try {
      _recordingPath = '/sdcard/Download/temp.wav';
      await _recorder!.startRecorder(
        toFile: _recordingPath,
      );
      if (mounted) {
        setState(() {
          _isRecording = true;
        });
      }
    } catch (e) {
      print('Error starting recorder: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error starting recorder: $e')),
        );
      }
    }
  }

  Future<void> _stopRecording() async {
    try {
      await _recorder!.stopRecorder();
      if (mounted) {
        setState(() {
          _isRecording = false;
        });
      }
      // 녹음 완료 후 AudioPlayerPage로 이동
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AudioPlayerPage(
              recordingPath: _recordingPath, songId: song.songId),
        ),
      );
    } catch (e) {
      print('Error stopping recorder: $e');
      if (mounted) {
        _showSnackbar('Error stopping recorder: $e');
      }
    }
  }

  void _showSnackbar(String message) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: Duration(seconds: 1)),
      );
    }
  }

  void _toggleFavorite() {
    if (mounted) {
      setState(() {
        if (isLiked) {
          // Remove from liked songs
          likedSongsBox.values
              .where((likedSong) => likedSong.songId == song.songId)
              .forEach((likedSong) => likedSong.delete());
          _showSnackbar("좋아요 목록에서 삭제되었습니다");
          _favoriteController.reverse();
        } else {
          // Add to liked songs
          likedSongsBox.add(LikedSong(songId: song.songId));
          _showSnackbar("좋아요 추가되었습니다");
          _favoriteController.animateTo(0.6);
        }
        isLiked = !isLiked;
      });
    }
  }

  @override
  void dispose() {
    _recorder!.closeRecorder();
    _favoriteController.dispose();
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
                            width: 140,
                            child: Text(
                              song.songTitle,
                              style: AppTextStyles.textBold18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Container(
                            width: 140, // Adjust width as needed
                            child: Text(
                              song.artistName,
                              style: AppTextStyles.textMedium18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        splashRadius: 10,
                        iconSize: 30,
                        onPressed: _toggleFavorite,
                        icon: Lottie.asset(Icons8.heart_color,
                            controller: _favoriteController),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _isRecording ? _stopRecording : _startRecording,
        child: Image.asset(_isRecording
            ? 'assets/images/ic_record_stop.png'
            : 'assets/images/ic_record_start.png'),
        backgroundColor: Colors.transparent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

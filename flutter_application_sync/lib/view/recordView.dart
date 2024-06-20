import 'package:flutter/material.dart';
import 'package:Sync/components/music.dart';
import 'package:Sync/components/music_box.dart';
import 'package:Sync/components/sync_bar.dart';
import 'package:Sync/const/styles.dart';
import '/const/colors.dart';
import 'package:Sync/models/profile_data.dart';
import 'package:Sync/models/song_model.dart';
import 'package:hive/hive.dart';

class RecordView extends StatefulWidget {
  const RecordView({super.key});

  @override
  _RecordViewState createState() => _RecordViewState();
}

class _RecordViewState extends State<RecordView> {
  late Box<Song> songBox;
  late ProfileData profileData;

  @override
  void initState() {
    super.initState();
    songBox = Hive.box<Song>('newBox');
  }

  @override
  Widget build(BuildContext context) {
    profileData = ProfileData.of(context)!;

    List<Song> likedSongs = songBox.values.where((song) {
      // 사용자가 좋아요를 누른 곡들을 필터링
      return profileData.likedSongs.contains(song.songId);
    }).toList();

    List<Song> voiceRangeSongs = songBox.values.where((song) {
      // 사용자의 음역대에 맞는 곡들을 필터링
      return song.voiceRange == profileData.voiceRange;
    }).toList();

    List<Song> demographicSongs = songBox.values.where((song) {
      // 사용자의 나이와 성별에 맞는 곡들을 필터링
      return (profileData.age == "전연령대" || song.targetAge == profileData.age) &&
          (profileData.gender == "남녀" ||
              song.targetGender == profileData.gender);
    }).toList();

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            // AppBar
            Syncbar(barImage: 'assets/images/sync_logo.png'),
            // Musics
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(23, 8, 0, 20),
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: profileData.name,
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '님, \n좋아요 누른 곡들이에요👍',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    MusicBox(
                      musicList: _buildMusicList(context, likedSongs),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: profileData.voiceRange,
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '에 맞는 노래 추천드려요 👍',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    MusicBox(
                      musicList: _buildMusicList(context, voiceRangeSongs),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: '${profileData.age} ${profileData.gender}',
                              style: AppTextStyles.textBold20
                                  .copyWith(color: biscay_50)),
                          const TextSpan(
                              text: '에게 인기 많은 곡 추천드려요 👍',
                              style: AppTextStyles.textBold20),
                        ],
                      ),
                    ),
                    MusicBox(
                      musicList: _buildMusicList(context, demographicSongs),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Music> _buildMusicList(BuildContext context, List<Song> songs) {
    return songs
        .map((song) => createMusicItem(
              title: song.songTitle,
              artist: song.artistName,
              album: song.albumName,
              imagePath: song.albumPicture,
              lyrics: song.lyrics,
              context: context,
            ))
        .toList();
  }
}

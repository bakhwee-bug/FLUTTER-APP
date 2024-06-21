import 'package:hive/hive.dart';

part 'liked_song_model.g.dart';

@HiveType(typeId: 2)
class LikedSong extends HiveObject {
  @HiveField(0)
  final int songId;

  LikedSong({required this.songId});
}

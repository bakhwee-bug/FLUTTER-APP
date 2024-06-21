import 'package:hive/hive.dart';

part 'cover_model.g.dart';

@HiveType(typeId: 1)
class Cover {
  @HiveField(0)
  //고유id
  final String coverId;
  @HiveField(1)
  final String songTitle;
  @HiveField(2)
  final String artistName;
  @HiveField(3)
  final String imagePath;
  @HiveField(4)
  final String coverPath;
  @HiveField(5)
  final String madeData;
  @HiveField(6)
  final int songId;

  Cover({
    required this.coverId,
    required this.songTitle,
    required this.artistName,
    required this.imagePath,
    required this.coverPath,
    required this.madeData,
    required this.songId,
  });
}

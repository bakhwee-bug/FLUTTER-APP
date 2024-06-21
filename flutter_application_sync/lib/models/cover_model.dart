import 'package:hive/hive.dart';

part 'cover_model.g.dart';

@HiveType(typeId: 1)
class Cover {
  @HiveField(0)
  final String songTitle;
  @HiveField(1)
  final String artistName;
  @HiveField(2)
  final String imagePath;
  @HiveField(3)
  final String coverPath;

  Cover(
      {required this.songTitle,
      required this.artistName,
      required this.imagePath,
      required this.coverPath});
}

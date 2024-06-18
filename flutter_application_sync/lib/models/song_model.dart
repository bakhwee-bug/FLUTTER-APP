import 'package:hive/hive.dart';

part 'song_model.g.dart';

@HiveType(typeId: 0)
class Song extends HiveObject {
  @HiveField(0)
  final String songTitle;

  @HiveField(1)
  final String artistName;

  @HiveField(2)
  final String albumName;

  @HiveField(3)
  final String albumPicture;

  Song({
    required this.songTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
  });
  static List<Song> createDummySongList() {
    return [
      Song(
        songTitle: "해야 (HEYA)",
        artistName: "IVE",
        albumName: "IVE SWITCH",
        albumPicture: "assets/images/Album_image_iveswitch.jpg",
      ),
      Song(
        songTitle: "Says It",
        artistName: "KISS OF LIFE",
        albumName: "Born to be XX",
        albumPicture: "assets/images/Album_image_borntobexx.jpg",
      ),
      Song(
        songTitle: "OMG",
        artistName: "New Jeans",
        albumName: "NJWMX",
        albumPicture: "assets/images/Album_image_NJWMX.jpg",
      ),
      Song(
        songTitle: "고민중독",
        artistName: "QWER",
        albumName: "MANITO",
        albumPicture: "assets/images/Album_image_MANITO.jpg",
      ),
      Song(
        songTitle: "Better Things",
        artistName: "aespa",
        albumName: "Better Things",
        albumPicture: "assets/images/Album_image_betterthings.jpg",
      ),
      Song(
        songTitle: "재연 (An Encore)",
        artistName: "SHINee(샤이니)",
        albumName: "Odd - The 4th Album",
        albumPicture: "assets/images/Album_image_odd.jpg",
      ),
      Song(
        songTitle: "I’m Crying (Korean Ver.)",
        artistName: "태민(TAEMIN)",
        albumName: "SHINee(샤이니)",
        albumPicture: "assets/images/Album_image_move.jpg",
      ),
    ];
  }
}

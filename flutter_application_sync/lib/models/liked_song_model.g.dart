// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_song_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LikedSongAdapter extends TypeAdapter<LikedSong> {
  @override
  final int typeId = 2;

  @override
  LikedSong read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LikedSong(
      songId: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LikedSong obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.songId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LikedSongAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

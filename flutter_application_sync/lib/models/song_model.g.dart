// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SongAdapter extends TypeAdapter<Song> {
  @override
  final int typeId = 0;

  @override
  Song read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Song(
      songId: fields[0] as int,
      songTitle: fields[1] as String,
      artistName: fields[2] as String,
      albumName: fields[3] as String,
      albumPicture: fields[4] as String,
      lyrics: fields[5] as String,
      voiceRange: fields[6] as String,
      targetAge: fields[7] as String,
      targetGender: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Song obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.songId)
      ..writeByte(1)
      ..write(obj.songTitle)
      ..writeByte(2)
      ..write(obj.artistName)
      ..writeByte(3)
      ..write(obj.albumName)
      ..writeByte(4)
      ..write(obj.albumPicture)
      ..writeByte(5)
      ..write(obj.lyrics)
      ..writeByte(6)
      ..write(obj.voiceRange)
      ..writeByte(7)
      ..write(obj.targetAge)
      ..writeByte(8)
      ..write(obj.targetGender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SongAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

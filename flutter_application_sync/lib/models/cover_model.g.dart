// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cover_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoverAdapter extends TypeAdapter<Cover> {
  @override
  final int typeId = 1;

  @override
  Cover read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cover(
      coverId: fields[0] as String,
      songTitle: fields[1] as String,
      artistName: fields[2] as String,
      imagePath: fields[3] as String,
      coverPath: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Cover obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.coverId)
      ..writeByte(1)
      ..write(obj.songTitle)
      ..writeByte(2)
      ..write(obj.artistName)
      ..writeByte(3)
      ..write(obj.imagePath)
      ..writeByte(4)
      ..write(obj.coverPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoverAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

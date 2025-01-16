// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_number_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RandomNumberEntityAdapter extends TypeAdapter<RandomNumberEntity> {
  @override
  final int typeId = 2;

  @override
  RandomNumberEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RandomNumberEntity(
      min: fields[0] as int,
      max: fields[1] as int,
      items: (fields[2] as List).cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, RandomNumberEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.min)
      ..writeByte(1)
      ..write(obj.max)
      ..writeByte(2)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RandomNumberEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

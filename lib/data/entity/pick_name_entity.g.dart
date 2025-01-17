// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_name_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PickNameEntityAdapter extends TypeAdapter<PickNameEntity> {
  @override
  final int typeId = 3;

  @override
  PickNameEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PickNameEntity(
      items: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PickNameEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PickNameEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

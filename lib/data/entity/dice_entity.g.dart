// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiceEntityAdapter extends TypeAdapter<DiceEntity> {
  @override
  final int typeId = 1;

  @override
  DiceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiceEntity(
      items: (fields[0] as List).cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, DiceEntity obj) {
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
      other is DiceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

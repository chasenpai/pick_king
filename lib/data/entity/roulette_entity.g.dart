// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roulette_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RouletteEntityAdapter extends TypeAdapter<RouletteEntity> {
  @override
  final int typeId = 0;

  @override
  RouletteEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RouletteEntity(
      items: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, RouletteEntity obj) {
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
      other is RouletteEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

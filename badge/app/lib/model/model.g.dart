// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomemodelAdapter extends TypeAdapter<Homemodel> {
  @override
  final int typeId = 0;

  @override
  Homemodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Homemodel(
      name: fields[0] as String,
      age: fields[1] as String,
      place: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Homemodel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.place);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomemodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

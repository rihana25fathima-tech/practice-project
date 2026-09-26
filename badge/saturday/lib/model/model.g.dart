// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodModelAdapter extends TypeAdapter<BloodModel> {
  @override
  final int typeId = 0;

  @override
  BloodModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BloodModel(
      name: fields[1] as String,
      age: fields[2] as String,
      bloodgroup: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BloodModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.bloodgroup);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

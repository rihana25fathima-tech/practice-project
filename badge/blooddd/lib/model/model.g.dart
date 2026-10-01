// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BllodmodelAdapter extends TypeAdapter<Bllodmodel> {
  @override
  final int typeId = 0;

  @override
  Bllodmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bllodmodel(
      name: fields[0] as String,
      age: fields[1] as String,
      bloodgroup: fields[2] as String,
      iscomplete: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Bllodmodel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.bloodgroup)
      ..writeByte(3)
      ..write(obj.iscomplete);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BllodmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

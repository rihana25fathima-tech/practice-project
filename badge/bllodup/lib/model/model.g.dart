// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BloodmodelAdapter extends TypeAdapter<Bloodmodel> {
  @override
  final int typeId = 0;

  @override
  Bloodmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bloodmodel(
      name: fields[0] as String,
      age: fields[1] as String,
      bllodgroup: fields[2] as String,
      iscompleted: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Bloodmodel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age)
      ..writeByte(2)
      ..write(obj.bllodgroup)
      ..writeByte(3)
      ..write(obj.iscompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

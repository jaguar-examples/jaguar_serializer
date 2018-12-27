// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JaguarSerializerGenerator
// **************************************************************************

abstract class _$PersonSerializer implements Serializer<Person> {
  @override
  Map<String, dynamic> toMap(Person model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'name', model.name);
    setMapValue(ret, 'age', model.age);
    return ret;
  }

  @override
  Person fromMap(Map map) {
    if (map == null) return null;
    final obj = new Person();
    obj.name = map['name'] as String;
    obj.age = map['age'] as int;
    return obj;
  }
}

abstract class _$AddressSerializer implements Serializer<Address> {
  @override
  Map<String, dynamic> toMap(Address model) {
    if (model == null) return null;
    Map<String, dynamic> ret = <String, dynamic>{};
    setMapValue(ret, 'street', model.street);
    setMapValue(ret, 'zipcode', model.zipcode);
    return ret;
  }

  @override
  Address fromMap(Map map) {
    if (map == null) return null;
    final obj = new Address();
    obj.street = map['street'] as String;
    obj.zipcode = map['zipcode'] as int;
    return obj;
  }
}

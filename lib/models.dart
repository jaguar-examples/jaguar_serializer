import 'package:jaguar_serializer/jaguar_serializer.dart';

part 'models.jser.dart';

class Person {
  String name;

  int age;

  Person({this.name, this.age});

  Map<String, dynamic> toJson() => serializer.toMap(this);

  String toString() => serializer.toMap(this).toString();

  static final serializer = PersonSerializer();
}

class Address {
  String street;

  int zipcode;

  Address({this.street, this.zipcode});

  String toString() => serializer.toMap(this).toString();

  static final serializer = AddressSerializer();
}

final jsonRepo = JsonRepo(serializers: [Person.serializer, Address.serializer]);

@GenSerializer()
class PersonSerializer extends Serializer<Person> with _$PersonSerializer {}

@GenSerializer()
class AddressSerializer extends Serializer<Address> with _$AddressSerializer {}

import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer_example/models.dart';

main(List<String> arguments) {
  // Serialization
  print(Person.serializer.toMap(Person(name: 'Teja', age: 29)));

  // Deserialization
  print(Person.serializer.fromMap({'name': 'Teja', 'age': 29}));
}

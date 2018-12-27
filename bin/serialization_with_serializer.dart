import 'package:jaguar/jaguar.dart';
import 'package:jaguar_serializer_example/models.dart';

main() async {
  final server = Jaguar(port: 10000);

  // Serialize with `Serializer`
  server.getJson("/v1/who",
      (ctx) => Person.serializer.toMap(Person(name: 'Teja', age: 29)));

  // `Person` model has `toJson` method, so just returning the model works
  server.getJson("/v2/who", (ctx) => Person(name: 'Teja', age: 29));

  server.group()
    ..after.add(
        (ctx) => ctx.response = Response.json(jsonRepo.to(ctx.response.value)))
    ..get("/v3/who", (ctx) => Person(name: 'Teja', age: 29))
    ..get("/v3/where", (ctx) => Address(street: 'Downing street', zipcode: 50));

  server.log.onRecord.listen(print);
  await server.serve(logRequests: true);
}

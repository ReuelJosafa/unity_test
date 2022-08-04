import 'dart:convert';

import 'package:http/http.dart';
import 'package:unity_test/person.dart';

class PersonRepository {
  final Client client;

  PersonRepository(this.client);

  Future<List<Person>> getPerson() async {
    final response = await client.get(Uri.parse(''));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => Person.fromMap(e)).toList();
    } else {
      throw Exception('Não foi possível carregar a lista');
    }
  }
}

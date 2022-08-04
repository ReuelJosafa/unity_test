import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:unity_test/person_repository.dart';
import 'package:http/http.dart' as http;

class ClientMock extends Mock implements http.Client {}

void main() {
  final client = ClientMock();
  final repository = PersonRepository(client);
  test('deve retornar uma lista vazia', () async {
    when(client)
        .calls(#get)
        .thenAnswer((_) async => http.Response(jsonReturn, 200));

    final personList = await repository.getPerson();

    expect(personList.isEmpty, equals(true));
  });
}

const jsonReturn = '[]';

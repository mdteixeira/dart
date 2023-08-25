import 'package:meu_app_teste/classes/viacep.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'meu_app_teste_test.mocks.dart';

@GenerateMocks([MockViaCEP])
void main() {
  test('Retonar CEP', () async {
    MockMockViaCEP mockMockViaCEP = MockMockViaCEP();
    when(mockMockViaCEP.retornarCEP("01001000"))
        .thenAnswer((realInvocation) => Future.value(

        ));

    ViaCEP viacep = ViaCEP();
    var body = await viacep.retornarCEP('02251010');
    expect(body['bairro'], equals('Vila Nivi'));
  });
}

class MockViaCEP extends Mock implements ViaCEP {}

import 'package:app1/classes/pessoa_fisica.dart' show PessoaFisica;
import 'package:app1/classes/pessoa_juridica.dart' show PessoaJuridica;
import 'package:app1/enum/tipo_notificacao.dart';
import 'package:app1/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var pf1 = PessoaFisica("Matheus", "Rua Abelha, 1", "22222222222",
      tipoNotificacao: TipoNotificacao.EMAIL);

  var pj1 = PessoaJuridica("Matheus", "Rua Abelha, 1", "22222222222",
      tipoNotificacao: TipoNotificacao.SMS);
  print(pf1);
  print(pj1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pf1);
  enviarNotificacao.notificar(pj1);
}

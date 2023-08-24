import 'package:app1/classes/pessoa.dart';
import 'package:app1/service/notificacao_interface.dart';

class NotificacaoPUSH implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando PUSH para : ${pessoa.getNome()}");
  }
}

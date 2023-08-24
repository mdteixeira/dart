import 'package:app1/classes/pessoa.dart';
import 'package:app1/service/notificacao_interface.dart';

class NotificacaoEMAIL implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando EMAIL para : ${pessoa.getNome()}");
  }
}

import 'package:app1/classes/pessoa.dart';
import 'package:app1/enum/tipo_notificacao.dart';
import 'package:app1/service/impl/notificacao_EMAIL.dart';
import 'package:app1/service/impl/notificacao_PUSH.dart';
import 'package:app1/service/impl/notificacao_SMS.dart';
import 'package:app1/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEMAIL();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      case TipoNotificacao.PUSH:
        notificacao = NotificacaoPUSH();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("pessoa sem tipo de notificacao");
    }
  }
}

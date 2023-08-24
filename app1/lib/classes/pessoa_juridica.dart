import 'package:app1/classes/pessoa.dart';
import 'package:app1/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setcnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getcnpj() {
    return _cnpj.toUpperCase();
  }

  // Construtores

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NONE})
      : super(nome, endereco, tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {"Nome": getNome(), "Endereço": getEndereco(), "cnpj": _cnpj}
        .toString();
  }
}

import 'package:app1/classes/pessoa.dart';
import 'package:app1/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf.toUpperCase();
  }

  // Construtores

  PessoaFisica(
    String nome, 
    String endereco, 
    String cpf, 
    {TipoNotificacao tipoNotificacao = TipoNotificacao.NONE}
    )
      : super(nome, endereco, tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf
    }.toString();
  }
}

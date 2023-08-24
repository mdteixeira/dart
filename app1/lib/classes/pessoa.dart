import 'package:app1/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _celular = "";
  String _email = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NONE;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular.toUpperCase();
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email.toUpperCase();
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token.toUpperCase();
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Endereço": _endereco}.toString();
  }

  // Construtores

  Pessoa(String nome, String endereco, TipoNotificacao tipoNotificacao) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }
}

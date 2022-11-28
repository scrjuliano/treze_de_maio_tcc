class Agenda {
  late String _idUsuario;
  late DateTime _horario;
  late String _barbeiro;
  late String _servico;


  Agenda();

  Map<String, dynamic>? toMap() {
    Map<String, dynamic> map = {"cliente": this.idUsuario, "barbeiro": this._barbeiro, "serviço": this._servico};

    return map;
  }

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }

 /* String get horario => _horario;

  set horario(DateTime value) {
    _horario = value;
  }*/

  String get barbeiro => _barbeiro;

  set barbeiro(String value) {
    _barbeiro = value;
  }

  String get servico => _servico;

  set servico(String value) {
    _servico = value;
  }

  /*String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }*/
}

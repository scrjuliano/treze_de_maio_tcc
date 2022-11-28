class Usuario {
  late String _idUsuario;
  late String _nome;
  late String _email;
  late String _senha;
  late String _phone;

  Usuario();

  Map<String, dynamic>? toMap() {
    Map<String, dynamic> map = {"nome": this.nome, "email": this.email, "telefone": this.phone};

    return map;
  }

  String get idUsuario => _idUsuario;

  set idUsuario(String value) {
    _idUsuario = value;
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  String get phone => _phone;

  set phone(String value) {
    _phone = value;
  }
}

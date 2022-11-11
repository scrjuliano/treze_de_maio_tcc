import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treze_de_maio_tcc/bindings/login_binding.dart';
import 'package:treze_de_maio_tcc/telas/login_screen.dart';

import '../model/user_model.dart';
import 'login_controller.dart';

class SignUpController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final loginController = Get.put(LoginController());
  final Usuario usuario = Usuario().obs();
  late String mensagemErro = ''.obs();

  @override
  void onInit() {
    mensagemErro = '';
    update();
  }

  cadastrarUsuario() async {
    loginController.dispose();
    await Firebase.initializeApp();
    FirebaseAuth auth = await FirebaseAuth.instance;
    usuario.email = emailController.text;
    usuario.nome = nameController.text;
    usuario.senha = passwordController.text;
    usuario.phone = phoneController.text;
    auth
        .createUserWithEmailAndPassword(
            email: usuario.email, password: usuario.senha)
        .then((User) {
      FirebaseFirestore db = FirebaseFirestore.instance;

      db.collection("usuarios").doc(User.user?.uid).set(usuario.toMap() ?? {});
      mensagemErro = '';
      update();
     // Get.to(TelaLogin(), binding: LoginBinding());
    }).catchError((erro) {
      List<String> formatedError = erro.toString().split("] ");
      if (formatedError.last ==
          'The email address is already in use by another account.') {
        mensagemErro = "Este e-mail já está em uso!";
        update();
        update();
      } else {
        mensagemErro = "Houve um erro durante o cadastro!";
        update();
      }
    });
  }

  void validarCampos() {
    if (emailController.text.isNotEmpty && emailController.text.contains("@")) {
      if (passwordController.text.length >= 6 &&
          confirmPasswordController.text.length >= 6) {
        if (passwordController.text == confirmPasswordController.text) {
          mensagemErro = "";
          update();

          cadastrarUsuario();
        } else {
          mensagemErro = "Suas senhas não conferem!";
          update();
        }
      } else {
        mensagemErro = "Senha precisa ter 6 ou mais caracteres!";
        update();
      }
    } else {
      mensagemErro = "Preencha o email com um endereço válido";
      update();
    }
  }
}

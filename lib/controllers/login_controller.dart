import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treze_de_maio_tcc/routes/app_routes.dart';

import '../routes/app_routes.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late String mensagemErro = ''.obs();

  @override
  void onInit() {
    verificarUsuarioLogado();
    super.onInit();
  }

  void login() async {
    await Firebase.initializeApp();

    FirebaseAuth auth = await FirebaseAuth.instance;

    auth
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((User) {
      Get.toNamed(AppRoutes.home);
    }).catchError((erro) {
      print(erro);
    });
  }

  deslogarUsuario() async {
    await Firebase.initializeApp();
    FirebaseAuth auth = await FirebaseAuth.instance;

    await auth.signOut();
    Get.toNamed(AppRoutes.login);
  }

  Future verificarUsuarioLogado() async {
    await Firebase.initializeApp();
    FirebaseAuth auth = await FirebaseAuth.instance;

    User? usuarioLogado = await auth.currentUser;
    if (usuarioLogado == null) {
      Get.toNamed(AppRoutes.home);
    }
  }

  void validarCampos() {
    if (emailController.text.isNotEmpty && emailController.text.contains("@")) {
      if (passwordController.text.length >= 6) {
        mensagemErro = "";
        update();
        login();
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

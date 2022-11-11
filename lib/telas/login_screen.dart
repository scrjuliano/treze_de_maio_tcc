import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:treze_de_maio_tcc/tabs/home_tab.dart';
import 'package:treze_de_maio_tcc/telas/singup_screen.dart';

import '../bindings/signupbinding.dart';
import '../controllers/login_controller.dart';

class TelaLogin extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Container(
          padding: EdgeInsets.only(top: 60, left: 40, right: 40),
          color: Colors.black,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/imagens/13demaio.png"),
              ),
              const SizedBox(
                height: 16.0,
              ),
              TextFormField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 16.0,
              ),

              TextFormField(
                controller: controller.passwordController,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      ('/senha'),
                    );
                  },
                  child: Text(
                    "Recuperar senha",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(

                child: ElevatedButton(
                  onPressed: () {
                    //controller.validarCampos();
                    Get.to(HomeTab(), binding: SignUpBinding());
                  },
                  style: ButtonStyle(),
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              Text(
                controller.mensagemErro,
                style: TextStyle(color: Colors.red),
              ),

              Container(

                child: TextButton(
                  onPressed: () {
                    Get.to(TelaCadastro(), binding: SignUpBinding());
                  },
                  child: Text(
                    "Criar conta",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

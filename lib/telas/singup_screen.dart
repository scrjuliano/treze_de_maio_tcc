import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class TelaCadastro extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return ListView(
          children: [
        Container(
          padding: EdgeInsets.only(left: 40, right: 40),
          color: Colors.black,
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/imagens/13demaio.png"),
              ),
            SizedBox(
              height: 20,
             ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
              labelText: "Nome",
              labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
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
              fontSize: 20,
              ),
              ),
              style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              ),
              ),
            SizedBox(
            height: 16.0,
            ),
            TextFormField(
              controller: controller.phoneController,
              maxLength: 11,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
              labelText: "Telefone",
              labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              ),
             )
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
              fontSize: 20,
              ),
              ),
              style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            TextFormField(
              controller: controller.confirmPasswordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
              labelText: "Confirmar Senha",
              labelStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              ),
              ),
              style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            SizedBox(
            height: 16.0,
            ),
            Text(
            controller.mensagemErro,
            style: TextStyle(color: Colors.red),
            ),

            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
              child: TextButton(
                style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {
                //ANTES DE CHAMAR ESSA FUNÇÂO DE CADASTRO DEVE ADICIONAR VALIDAÇÂO!!!
                controller.validarCampos();
              },
              child: Text(
              "Cadastrar",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
            ),
            ),
            ),
        ],
        ),
        ),
          ],
        );
      }),
    );
  }
}

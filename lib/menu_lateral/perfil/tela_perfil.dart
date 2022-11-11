import 'package:flutter/material.dart';

import 'avatar.dart';
import 'caixas_texto_perfil.dart';



class TelaPerfil extends StatelessWidget {
  const TelaPerfil({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height * 0.6;

    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Perfil",

            style: TextStyle(
              fontSize: 17,
            ),
          ),
          backgroundColor: Colors.black,
          actions: [
            GestureDetector(
            onTap: () {
                showDialog(
                context: context,
                builder: (context) => AlertDialog(
                title: Text('Confirmação'),
                content: Text('Tem certeza que deseja salvar as informações do perfil? '
                ),
                actions: [
                  TextButton(
                  child: Text('Sim'),
                  onPressed: ()=>  Navigator.pushNamed(
                  context,
                  ('/home'),
                  ),
                  ),
                TextButton(
                child: Text('Não'),
                onPressed: ()=> Navigator.pop(context),
                )
                ],
                )
                );

                },
              child: Container(
                padding: EdgeInsets.only(top: 20, right: 15.0),
                child: Text(
                  "Salvar",
                ),
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
                [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),

                    color: Colors. white,
                    width: screenWidth,
                    height: screenHeight,
                    child: Column(
                      children: [
                        Avatar(backgroundImage: '',),
                        CaixaTexto(),

                      ],
                    ),

                  )
                ]
            ))
          ],
        ),
      ),
    );
  }

  }

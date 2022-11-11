import 'package:flutter/material.dart';

import '../menu_lateral/perfil/tela_perfil.dart';
import '../menu_lateral/tela_agendados.dart';
import '../menu_lateral/tela_contatos.dart';
import '../tabs/home_tab.dart';
import '../widgets/custom_drawer.dart';
import 'login_screen.dart';

class Telainical extends StatelessWidget {
  Telainical({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
      Scaffold(
      drawer: CustomDrawer(_pageController),
      body: HomeTab(),
      ),
        TelaPerfil(),
        TelaAgenda(),
        TelaContato(),
        //TelaLogin()
     ],
   );
  }
}

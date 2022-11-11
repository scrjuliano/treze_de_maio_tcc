import 'package:get/get.dart';
import 'package:treze_de_maio_tcc/telas/tela_inical.dart';

import '../bindings/login_binding.dart';
import '../telas/calendar_screen.dart';
import '../telas/login_screen.dart';
import '../telas/singup_screen.dart';
import '../telas/tela_barbeiro.dart';
import '../telas/tela_reset_senha.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.login,
        page: () => TelaLogin(),
        binding: LoginBinding()),
    GetPage(
        name: AppRoutes.cadastro,
        page: () => TelaCadastro(),
        binding: LoginBinding()),
    GetPage(
      name: AppRoutes.home,
      page: () => Telainical(),
    ),
    GetPage(
      name: AppRoutes.agenda,
      page: () => CalendarScreen(),
    ),
    GetPage(
      name: AppRoutes.barbeiro,
      page: () => Telabarbeiro(),
    ),
    GetPage(
      name: AppRoutes.senha,
      page: () => ResetPasswordPage(),
    ),

  ];
}

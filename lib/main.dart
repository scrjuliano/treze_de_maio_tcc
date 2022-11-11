import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:treze_de_maio_tcc/routes/app_pages.dart';
import 'package:treze_de_maio_tcc/routes/app_routes.dart';

import 'bindings/login_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '13 De Maio',
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: LoginBinding(),
      initialRoute: AppRoutes.login,
      getPages: AppPages.pages,
    );
  }
}

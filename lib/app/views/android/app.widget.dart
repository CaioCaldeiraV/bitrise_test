import 'package:flutter/material.dart';
import 'splash/splash.view.dart';
import 'themes/app.theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemon Challenge ClubPetro',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const SplashView(),
    );
  }
}

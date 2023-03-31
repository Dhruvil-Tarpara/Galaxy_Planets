import 'package:flutter/material.dart';

import 'screens/detail_page.dart';
import 'screens/home_page.dart';
import 'screens/splash_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: true,
    ),
    initialRoute: "splash",
    routes: {
      "/" : (context) => const HomePage(),
      "detail" : (context) => const DetailPage(),
      "splash" : (context) => const SplashPage(),
    },
  ),);
}
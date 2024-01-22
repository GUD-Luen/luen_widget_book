import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:luen_widget_book/screens/main/main_page.dart';
import 'package:get/get.dart';
import 'package:luen_widget_book/screens/text/text_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy(); //url # 제거
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '루엔 위젯 북',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ko', 'KR'),
      ],
      initialRoute: MainPage.route,
      getPages: [
        GetPage(name: MainPage.route, page: () => const MainPage()),
        GetPage(name: TextPage.route, page: ()=> TextPage()),
      ],
    );
  }
}

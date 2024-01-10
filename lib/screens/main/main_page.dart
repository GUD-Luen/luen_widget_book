import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String route = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Luen Widget Book'),
      ),
      body: ListView(
        children: [
          item(title: 'Text', onTap: ()=>Get.toNamed('')),
        ],
      ),
    );
  }

  Widget item({required String title, Function()? onTap}){
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text(title),
        ),
      ),
    );
  }


}

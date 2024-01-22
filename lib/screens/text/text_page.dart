import 'package:flutter/material.dart';
import 'package:luen_widget_book/screens/text/controller/text_page_controller.dart';
import 'package:get/get.dart';

class TextPage extends StatelessWidget {
  TextPage({super.key});

  static const route = '/text';

  final TextPageController controller = Get.put(TextPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: const Center(
        child: Text('text widget'),
      ),
    );
  }
}

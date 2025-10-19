import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessageInputController extends GetxController {
  final TextEditingController textController = TextEditingController();

  var hasText = false.obs;

  @override
  void onInit() {
    super.onInit();

    textController.addListener(() {
      hasText.value = textController.text.trim().isNotEmpty;
    });
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }

  bool get showSendButton => hasText.value;

  void clearInput() {
    textController.clear();
  }
}

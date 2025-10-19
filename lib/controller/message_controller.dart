import 'package:chat_app/model/signup_user_model.dart';
import 'package:chat_app/services/user_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  final UserService _userService = UserService();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  var userList = <SignupUserModel>[].obs;
  late String currentUserId;

  @override
  void onInit() {
    super.onInit();

    currentUserId = FirebaseAuth.instance.currentUser?.uid ?? '';

    if (currentUserId.isNotEmpty) {
      _userService.getAllUsersExceptCurrent(currentUserId).listen((users) {
        userList.assignAll(users);
      });
    }
  }

  Future<void> sendMessage(String receiverId, String text) async {
    try {
      String chatId = _userService.getChatId(currentUserId, receiverId);
      await _userService.sendMessage(
        chatId: chatId,
        senderId: currentUserId,
        receiverId: receiverId,
        text: text,
      );
      await Future.wait([
        _firestore.collection('users').doc(currentUserId).update({
          'lastMessage': text,
          'lastMessageTime': Timestamp.now(),
        }),
        _firestore.collection('users').doc(receiverId).update({
          'lastMessage': text,
          'lastMessageTime': Timestamp.now(),
        }),
      ]);
    } catch (e) {
      Get.log('Error sending message: $e');
    }
  }
}

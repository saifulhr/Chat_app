import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chat_app/model/signup_user_model.dart';
import 'package:chat_app/model/message_model.dart';

class UserService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  String getChatId(String userId1, String userId2) {
    List<String> users = [userId1, userId2];
    users.sort();
    return users.join('_');
  }

  Future<void> sendMessage({
    required String chatId,
    required String senderId,
    required String receiverId,
    required String text,
  }) async {
    final chatDoc = _firestore.collection('chats').doc(chatId);
    await chatDoc.set({
      'participants': [senderId, receiverId],
      'lastMessage': text,
      'lastMessageTime': Timestamp.now(),
    }, SetOptions(merge: true));

    final messageRef = chatDoc.collection('messages').doc();
    final message = {
      'senderId': senderId,
      'receiverId': receiverId,
      'text': text,
      'timestamp': Timestamp.now(),
    };
    await messageRef.set(message);
    await Future.wait([
      _firestore.collection('SignupUsers').doc(senderId).update({
        'lastMessage': text,
        'lastMessageTime': Timestamp.now(),
      }),
      _firestore.collection('SignupUsers').doc(receiverId).update({
        'lastMessage': text,
        'lastMessageTime': Timestamp.now(),
      }),
    ]);
  }

  Stream<List<SignupUserModel>> getAllUsersExceptCurrent(String currentUserId) {
    return _firestore.collection('SignupUsers').snapshots().map((snapshot) =>
        snapshot.docs
            .map((doc) => SignupUserModel.fromJson(doc.data()))
            .where((user) => user.uid != currentUserId)
            .toList());
  }

  Stream<List<MessageModel>> getMessages(String chatId) {
    return _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => MessageModel.fromMap(doc.data()))
            .toList());
  }
}

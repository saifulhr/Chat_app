import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/signup_user_model.dart';

class UserController extends GetxController {
  RxList<SignupUserModel> userList = <SignupUserModel>[].obs;
  late String currentUserId;

  @override
  void onInit() {
    super.onInit();
    currentUserId = FirebaseAuth.instance.currentUser?.uid ?? '';
    fetchUsers();
  }

  void fetchUsers() async {
  try {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('SignupUsers')
        .get();

    final users = querySnapshot.docs.map((doc) {
      return SignupUserModel.fromJson(doc.data());
    }).toList();

    userList.assignAll(users);
  } catch (e) {
    // ignore: avoid_print
    print("Error fetching users: $e");
  }
}

}

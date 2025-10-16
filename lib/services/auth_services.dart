import 'package:chat_app/model/signup_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance..setLanguageCode('en');
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// Sign Up Function
  Future<String?> signup({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      //Firebase Auth

      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = cred.user;

      //Email Verification

      await user?.sendEmailVerification();

      //Signup User Model
      SignupUserModel usermodel = SignupUserModel(
        uid: user!.uid,
        name: name,
        email: email,
      );

      await _firestore
          .collection('SignupUsers')
          .doc(user.uid)
          .set(usermodel.toJson());
      return null;
    } on FirebaseException catch (e) {
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }

  //current user's email is verified

  Future<bool> isEmailVerified() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.reload();
      user = FirebaseAuth.instance.currentUser;
      return user!.emailVerified;
    }
    return false;
  }

  // Sign out user

  Future<void> signOut() async {
    await _auth.signOut();
  }

  //Log in Function

  Future<String?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      if (email.trim().isEmpty || password.trim().isEmpty) {
        return 'Email and Password cannot be empty.';
      }

      UserCredential userCred =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );

      if (!userCred.user!.emailVerified) {
        await FirebaseAuth.instance.signOut();
        return 'Please verify your email first.';
      }

      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'Wrong Email';
      } else if (e.code == 'wrong-password') {
        return 'Wrong Password';
      } else if (e.code == 'invalid-email') {
        return 'Invalid Email Format';
      } else {
        return 'Something went wrong';
      }
    } catch (e) {
      return 'Something went wrong: $e';
    }
  }
//Forgot Password Section 
  Future<String?> resetPassword(String email) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.trim());
    return null;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      return 'This is not a registered email';
    } else if (e.code == 'invalid-email') {
      return 'Invalid email format';
    } else {
      return 'Something went wrong. Try again.';
    }
  } catch (e) {
    return 'Unexpected error: $e';
  }
}
User? getCurrentUser() {
  return FirebaseAuth.instance.currentUser;
}
Future<bool> isUserRegisteredInFirestore() async {
  final user = FirebaseAuth.instance.currentUser;
  if (user == null) return false;

  final doc = await FirebaseFirestore.instance
      .collection('SignupUsers')
      .doc(user.uid)
      .get();

  return doc.exists;
}

}

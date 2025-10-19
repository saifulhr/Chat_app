import 'package:cloud_firestore/cloud_firestore.dart';

class SignupUserModel {
  String? uid;
  String? name;
  String? email;
  String? status;
  String? photoUrl;
  int? borderColorIndex;
  String? lastMessage;
  DateTime? lastMessageTime;
  int unreadMessageCount;

  SignupUserModel({
    this.uid,
    this.name,
    this.email,
    this.status,
    this.photoUrl,
    this.borderColorIndex,
    this.lastMessage,
    this.lastMessageTime,
    this.unreadMessageCount = 0,
  });

  factory SignupUserModel.fromJson(Map<String, dynamic> json) {
    return SignupUserModel(
      uid: json['uid'],
      name: json['name'],
      email: json['email'],
      status: json['status'],
      photoUrl: json['photoUrl'],
      borderColorIndex: json['borderColorIndex'],
      lastMessage: json['lastMessage'],
      lastMessageTime: json['lastMessageTime'] != null
          ? (json['lastMessageTime'] as Timestamp).toDate()
          : null,
      unreadMessageCount: json['unreadMessageCount'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
      'uid': uid,
      'name': name,
      'email': email,
      'status': status,
      'photoUrl': photoUrl,
      'borderColorIndex': borderColorIndex,
      'lastMessage': lastMessage,
      'lastMessageTime': lastMessageTime != null ? Timestamp.fromDate(lastMessageTime!) : null,
      'unreadMessageCount': unreadMessageCount,
    };

}

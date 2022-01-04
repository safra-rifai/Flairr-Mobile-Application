import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {


  getUserByUsername(String username) async {
    return await FirebaseFirestore.instance.collection("user")
        .where("username", isEqualTo: username)
        .get();
  }

  uploadUserInfo(userMap) {
    FirebaseFirestore.instance.collection("user")
        .add(userMap);
  }
}
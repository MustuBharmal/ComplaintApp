import 'package:cloud_firestore/cloud_firestore.dart';

class AdminModel {
  String? uid;
  String? name;
  String? email;
  String? phoneNo;
  String? dist;

  AdminModel({
    this.uid,
    this.name,
    this.email,
    this.phoneNo,
    this.dist,
  });
  toJson() {
    return {
      'name': name,
      'email': email,
      'phoneNo': phoneNo,
      'dist': dist,
    };
  }

  factory AdminModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return AdminModel(
      uid: document.id,
      name: data['name'],
      email: data['email'],
      phoneNo: data['phoneNo'],
      dist: data['dist'],
    );
  }
}

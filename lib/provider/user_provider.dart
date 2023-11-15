import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/strings.dart';
import '../models/admin_model.dart';
import '../models/states_dist_model.dart';
import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  UsersModel? userModel;
  AdminModel? adminModel;

  void getUserData() async {
    await db
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then(
      (querySnapshot) {
        if (querySnapshot.data() != null) {
          userModel = UsersModel.fromJson(querySnapshot.data()!);
        }
      },
      onError: (e) => print("Error completing: $e"),
    );
    notifyListeners();
  }

  Future<void> getOfficerData() async {
    await db
        .collection("officers")
        .where('dist', isEqualTo: userModel!.dist)
        .get()
        .then(
      (querySnapshot) {
        if (querySnapshot.docs.isNotEmpty) {
          adminModel = AdminModel.fromSnapshot(querySnapshot.docs.first);
        }
      },
    );

    notifyListeners();
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    userModel = null;
    adminModel = null;
    notifyListeners();
  }


  Future<List<StateModel>> fetchData() async {
    try {
      final jsonText =
      await rootBundle.loadString('assets/states-and-districts.json');
      final jsonData = json.decode(jsonText);
      List<StateModel> stateList = [];

      for (var stateData in jsonData['states']) {
        final stateName = stateData['state'];
        final districts = List<String>.from(stateData['districts']);
        stateList.add(StateModel(stateName, districts));
      }

      return stateList;
    } catch (e) {
      throw Exception('Failed to load data; $e');
    }
  }
}

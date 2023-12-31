import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/strings.dart';
import '../models/prob_model.dart';
import '../models/states_dist_model.dart';
import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  UsersModel? userModel;

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
  void logout() async {
    await FirebaseAuth.instance.signOut();
    userModel = null;
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
  Future<List<Problem>> fetchProbData() async {
    try {
      final jsonText =
      await rootBundle.loadString('assets/prob_dept_subDept.json');
      final jsonData = json.decode(jsonText);
      List<Problem> probList = [];

      for (var stateData in jsonData['problems']) {
        final probName = stateData['name'];
        final dept = (stateData['office']);
        final subDept = (stateData['subOffice']);
        probList.add(Problem(probName, dept, subDept));
      }

      return probList;
    } catch (e) {
      throw Exception('Failed to load data; $e');
    }
  }
}

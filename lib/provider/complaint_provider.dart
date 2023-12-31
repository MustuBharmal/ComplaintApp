import 'package:complain_app/models/complaint_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/strings.dart';

class ComplaintProvider with ChangeNotifier {
  List<ComplaintModel> allComplaints = [];

  Future<void> fetchComplaintData() async {
    allComplaints.clear();
    final docRef = db.collection('complaints');

    try {
      var querySnapshot = await docRef
          .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .orderBy('createdAt', descending: true)
          .get();

      for (var element in querySnapshot.docs) {
        allComplaints.add(ComplaintModel.fromSnapshot(element));
      }

      notifyListeners();
    } catch (e) {
      print('Error getting documents: $e');
      // Handle the error as needed
    }
  }

  Future<void> addComplaintData(ComplaintModel data) async {
    try {
      final doc = await db.collection(complaintDataRef).add(data.toJson());
      if (doc.id != '') {
        data.id = doc.id;
      }
      allComplaints.add(data);
      notifyListeners();
    } catch (error) {
      // print(error);
      throw error;
    }
  }

  ComplaintModel findById(String id) {
    return allComplaints.firstWhere((element) => element.id == id);
  }

  Future<void> updatePerson(String? id, ComplaintModel editedComplaint) async {
    var col = db.collection('complaints');
    col.doc('id').update(
          editedComplaint.toJson(),
        );
    notifyListeners();
  }

  List<ComplaintModel> getPendingComplaints(String status) {
    List<ComplaintModel> userList = [];
    userList.addAll(allComplaints.where((element) => element.status == status));
    return userList;
  }

  List<ComplaintModel> get complaint {
    return [...allComplaints];
  }
}

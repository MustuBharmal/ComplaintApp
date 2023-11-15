import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../constants/strings.dart';

class MessageProvider with ChangeNotifier{
  static Future<void> sendMessage(
      String sender, String receiver, String content) async {
    await db.collection('messages').add({
      'sender': sender,
      'receiver': receiver,
      'content': content,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  /*static Stream<QuerySnapshot> getMessages(String user1, String user2) {
    return db
        .collection('messages')
        .where('sender', isEqualTo: user1)
        .where('receiver', isEqualTo: user2)
        .orderBy('timestamp')
        .snapshots();
  }*/
}

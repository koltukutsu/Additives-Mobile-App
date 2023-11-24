import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wallet/model/group.dart';

import 'authentication.dart';

class FireDatabase {
  final firebaseFirestore = FirebaseFirestore.instance;

  createApprovedGroup({required Group group, required String userId}) {
    // firebaseFirestore.collection("groups").doc(userId).collection("privateGroups").doc(group.id).set({
    firebaseFirestore.collection("groups").doc(group.id).set({
      "name": group.name,
      "description": group.description,
      "members": group.members,
    });
  }

  Stream<QuerySnapshot> getGroupsCollectionAsSnapshot({required String userEmail, required String userId})  {
    // final Stream<QuerySnapshot> snapshot = firebaseFirestore.collection("groups").doc(userId).collection("privateGroups").snapshots();
    final authRepository = FireAuthenticationRepository();
    final Stream<QuerySnapshot> snapshot = firebaseFirestore.collection("groups").where("members", arrayContains: userEmail).snapshots();
    return snapshot;
  }
}

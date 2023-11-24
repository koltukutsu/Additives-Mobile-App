import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallet/model/messaging.dart';

import 'authentication.dart';

class FirebaseMessagingRepository {
  final firebaseFirestore = FirebaseFirestore.instance;
  final FireAuthenticationRepository firebaseAuth =
  FireAuthenticationRepository();

  sendToken({required String token}) async {
    // await FirebaseFirestore.instance.collection('users').doc(getUser().uid).update({
    //   'token': token,
    // });
    firebaseFirestore
        .collection('userTokens')
        .doc(firebaseAuth
        .getUser()
        .uid)
        .set({
      'token': token,
    });
  }

  Future<List<String>> getTokensBasedOnEmails(
      {required List<String> emails}) async {
    try {
      final firestore = FirebaseFirestore.instance;
      final List<String> userTokens = [];
      // final Map<String, String> userTokens = [];
      for (final email in emails) {
        // Step 1: Query the "users" collection to get user ID based on email
        final userQuery = await firestore
            .collection('users')
            .where('email', isEqualTo: email)
            .get();

        if (userQuery.docs.isEmpty) {
          // Handle the case where no matching user is found for the email
          throw Exception('Error: User Token Is Not Found');
        }

        final String userId = userQuery.docs[0].id;
        final tokensDoc =
        await firestore.collection('userTokens').doc(userId).get();

        if (tokensDoc.exists) {
          // Get the token from the document and add it to the map
          final token = tokensDoc['token'] as String;
          userTokens.add(token);
        }

        userTokens.add(userId);
      }
      return userTokens;
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<void> createGroupCreationDocument({required String groupId,
    required int threshold,
    required List<String> emails}) async {
    firebaseFirestore.collection('groupRequests').doc(groupId).set({
      'status': "Pending",
      "threshold": threshold,
      "emails": emails,
      "approved_emails": [],
      // "approved_length": 0
    });
  }

  Future<void> approveGroupCreation(
      {required String groupId, required String email}) async {
    DocumentSnapshot document =
    await firebaseFirestore.collection("groupRequests").doc(groupId).get();
    if (document.exists) {
      List<String> currentList =
      List<String>.from(document.get("approved_emails") ?? []);

      currentList.add(email);
      firebaseFirestore
          .collection(("groupRequests"))
          .doc(groupId)
          .update({"approved_emails": currentList});
    } else {
      throw ("ERROR - Approving Group Creation - unable to add the user email to group");
    }
  }

  Future<void> changeTheGroupCreationStatus(
      {required String status, required String groupId}) async {
    await firebaseFirestore
        .collection(("groupRequests"))
        .doc(groupId)
        .update({"status": status});
  }

  Stream<DocumentSnapshot> getSpecificGroup({required String groupId}) {
    try {
      Stream<DocumentSnapshot> itemStream = firebaseFirestore
          .collection("groupRequests")
          .doc(groupId)
          .snapshots();
      return itemStream;
    } catch (e) {
      throw ("GETTING SNAPSHOT - error $e");
    }
  }

  Future<dynamic> triggerMessageSending({required FMCMessage fmcMessage,
    required List<String> emails,
    required int threshold,
    required String groupId}) async {
    try {
      // Define the API endpoint and request data
      final apiURL = Uri.parse('https://sendapprovals-5lpkim4suq-uc.a.run.app');
      final apiData = fmcMessage.toJson();

      // Make the HTTP POST request to the API
      debugPrint("1 - Check Json String ${json.encode(apiData)}");
      final response = await http.post(
        apiURL,
        body: json.encode(apiData),
        headers: {
          "Content-Type": "application/json",
        },
      );

      // Check the response status code and handle accordingly
      if (response.statusCode == 200) {
        createGroupCreationDocument(
            groupId: groupId, threshold: threshold, emails: emails);
        // Parse and return the response data
        return json.decode(response.body);
      } else {
        // Throw an exception with an error message
        throw Exception(
            "SENDING MESSAGES: API request failed with status code ${response
                .statusCode}");
      }
    } catch (e) {
      // Handle network errors or exceptions
      throw Exception("SENDING MESSAGES: API request failed: $e");
    }
  }
}

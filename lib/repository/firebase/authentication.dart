import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';

class FireAuthenticationRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    try {
      final authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user!.uid;
    } catch (e) {
      throw "Error In Authentication: $e";
    }
  }

  Future<String?> createUserAndAddToFirestore(String email, String password) async {
    try {
      final authResult = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final userUid = authResult.user?.uid;

      if (userUid != null) {
        final firestore = FirebaseFirestore.instance;

        // Reference to the users collection
        final usersCollection = firestore.collection('users');

        // Check if a document with the user's UID exists
        final userDocRef = usersCollection.doc(userUid);
        final userDocSnapshot = await userDocRef.get();

        if (!userDocSnapshot.exists) {
          // Create a new document with the UID as the document ID and email as a variable
          await userDocRef.set({
            'email': email,
            // You can add more user-related data here if needed
          });
        }

        return userUid;
      }

      return null;
    } catch (e) {
      print('Error creating user and adding to Firestore: $e');
      return null;
    }
  }


  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  User getUser() {
    final User currentUser = _firebaseAuth.currentUser!;
    return currentUser;
  }

  // Future<bool> checkIfEmailIsRegistered(String email) async {
  //   try {
  //     final List<String> signInMethods = await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
  //     print("FETHEC THE METHODS");
  //     print(signInMethods);
  //     if (signInMethods.isNotEmpty) {
  //       // The email is associated with an existing account.
  //       debugPrint('Email is registered with the following methods: $signInMethods');
  //       return true;
  //     } else {
  //       // The email is not associated with any account.
  //       debugPrint('Email is not registered.');
  //       return false;
  //     }
  //   } catch (e) {
  //     debugPrint('Error checking email registration: $e');
  //     return false;
  //   }
  // }

  // checks whether the user exists or not in the database
  Future<bool> checkIfEmailIsRegistered(String email) async {
    try {
      // Make a query to the Firestore collection 'users' to check if the email exists.
      final QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore.instance
          .collection('users') // Replace 'users' with your actual collection name
          .where('email', isEqualTo: email)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // The email is associated with an existing user in the collection.
        debugPrint('User Control - Email is registered.');
        return true;
      } else {
        // The email is not associated with any user in the collection.
        debugPrint('User Control - Email is not registered.');
        return false;
      }
    } catch (e) {
      debugPrint('User Control - Error checking email registration: $e');
      return false;
    }
  }

  Future<String> getUserEmail({required String userId}) async {
    final DocumentSnapshot userDocument = await FirebaseFirestore.instance.collection("users").doc(userId).get();
    return userDocument.get("email");
  }
}

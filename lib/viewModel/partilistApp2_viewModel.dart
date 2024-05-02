import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:omvoting/model/partieslist_app2_model.dart';

class PartyViewModel extends GetxController {
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> addParty(File imageFile, String partName, String partNo) async {
    try {
      isLoading.value = true;

      // Generate a unique ID for the party document
      String uniqueId = DateTime.now().microsecondsSinceEpoch.toString();

      // Upload the image to Firebase Storage
      TaskSnapshot uploadTask = await FirebaseStorage.instance
          .ref('images/$uniqueId.jpg')
          .putFile(imageFile);

      // Get the download URL of the uploaded image
      String downloadImageUrl = await uploadTask.ref.getDownloadURL();

      // Create a new PartiesListApp2Model instance with party details
      PartiesListApp2Model party = PartiesListApp2Model(
        partyName: partName,
        partyId: partNo,
        image: downloadImageUrl,
      );

      // Add the party data to Firestore
      await FirebaseFirestore.instance
          .collection("party")
          .doc(uniqueId)
          .set(party.toMap());

      Fluttertoast.showToast(
        msg: "Data Inserted Succsessfully",
        toastLength:
            Toast.LENGTH_SHORT, // Duration for which the toast is shown
        gravity: ToastGravity.BOTTOM, // Toast position
        timeInSecForIosWeb: 5, // Time in seconds for iOS
        backgroundColor: const Color.fromARGB(255, 130, 244, 54)
            .withOpacity(0.7), // Background color of the toast
        textColor: Colors.white, // Text color of the toast
        fontSize: 16.0, // Font size of the toast message
      );
    } catch (error) {
      // Handle errors
      isLoading.value = false;
      String errorMessage = 'Failed to add party';
      if (error is FirebaseException) {
        errorMessage = error.message ?? 'Unknown error occurred';
      }
      Get.snackbar('Adding Party', errorMessage,
          backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
    }
  }
}

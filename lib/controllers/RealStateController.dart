



import 'dart:io';

import 'package:biding_app/model/FurnitureModel.dart';
import 'package:biding_app/model/VehicleModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/AgricultureModel.dart';
import '../model/RealStateModel.dart';

class RealStateController {

  Future<User> InsertRealState(RealStateModel realStateModel,Rx<File> image) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String docId=prefs.getString("docId");

    // Upload Image in FireBase
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();  // with same name only one image is uploaded and time changes new images uploaded
    Reference refrence=FirebaseStorage.instance.ref().child("realStateImages/$fileName");
    await refrence.putFile(image.value);
    String imageUrl=await refrence.getDownloadURL();

    try {


      FirebaseFirestore.instance.collection('realState').doc().set({
         "id":docId,
        'buyerDocId':realStateModel.buyerDocId ,
        'selectType':realStateModel.selectType,
        'areaType':realStateModel.areaType,
        'range':realStateModel.range,
        'noFloors':realStateModel.noFloors,
        'noBedrooms':realStateModel.noBedrooms,
        'noBathrooms':realStateModel.noBathrooms,
        'auctionType':realStateModel.auctionType,
        'setBidPrice':realStateModel.setBidPrice,
        'setBidEndTime':realStateModel.setBidEndTime,
        'cityName':realStateModel.cityName,
        'completeAddress':realStateModel.completeAddress,
        'description':realStateModel.description,
        'status':realStateModel.status,
        'imagePath':imageUrl,
        // Other user data fields
      });

      // return userCredential.user;

    }  on FirebaseAuthException catch (e) {

      return Future.error(e.message);
    } catch (e) {

      return Future.error("An error occurred while Insert Real State Data.");
    }
  }


  Future<User> InsertRealStateCommercial(RealStateModel realStateModel,Rx<File> image) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String docId=prefs.getString("docId");

    // Upload Image in FireBase
    String fileName = DateTime.now().millisecondsSinceEpoch.toString();  // with same name only one image is uploaded and time changes new images uploaded
    Reference refrence=FirebaseStorage.instance.ref().child("realStateImages/$fileName");
    await refrence.putFile(image.value);
    String imageUrl=await refrence.getDownloadURL();

    try {


      FirebaseFirestore.instance.collection('realState').doc().set({
        'id':docId,
        'buyerDocId':realStateModel.buyerDocId ,
        'selectType':realStateModel.selectType,
        'areaType':realStateModel.areaType,
        'range':realStateModel.range,
        'noFloors':realStateModel.noFloors,
        'noBedrooms':realStateModel.noBedrooms,
        'noBathrooms':realStateModel.noBathrooms,
        'auctionType':realStateModel.auctionType,
        'setBidPrice':realStateModel.setBidPrice,
        'setBidEndTime':realStateModel.setBidEndTime,
        'cityName':realStateModel.cityName,
        'completeAddress':realStateModel.completeAddress,
        'description':realStateModel.description,
        'status':realStateModel.status,
        'imagePath':imageUrl,
        // Other user data fields
      });

      // return userCredential.user;

    }  on FirebaseAuthException catch (e) {

      return Future.error(e.message);
    } catch (e) {

      return Future.error("An error occurred while Insert Real State Data.");
    }
  }


}
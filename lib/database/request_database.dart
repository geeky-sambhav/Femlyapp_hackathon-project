import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mad_project/modals/request.dart';

class RequestDatabase {
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('request');

  Future updateRequest(Request req) {
    // DateTime dt = DateTime.now();
    return collectionReference.doc(req.uid).set({
      "uid": req.uid,
      "items": req.items,
      "status": req.status,
      "expectedTime": req.expectedTime,
      "acceptTime": req.acceptTime,
      "customerAddress": req.customerAddress,
      "customerName": req.customerName,
      "error": req.error,
      "requestTime": req.requestTime,
      "totalPrice": req.totalPrice,
      "shopName": req.shopName,
      "shopkeeperName": req.shopkeeperName
    });
  }

  Future orderDelivered(String uid, String status) async {
    await collectionReference.doc(uid).update({
      "status": status,
    });
  }

  Future rejectRequest(
      String uid, String status, String error, String acceptTime) async {
    await collectionReference
        .doc(uid)
        .update({"status": status, "acceptTime": acceptTime, "error": error});
  }

  List<Request> requestListFromSnap(QuerySnapshot snap) {
    return snap.docs.map((e) {
      dynamic dt = Map<String, dynamic>.from(e.data());
      return Request(
          uid: dt["uid"],
          items: Map<String, int>.from(dt["items"]),
          status: dt["status"],
          expectedTime: dt["expectedTime"],
          acceptTime: dt["acceptedTime"],
          customerAddress: dt["customerAddress"],
          customerName: dt["customerName"],
          error: dt["error"],
          requestTime: dt["requestTime"],
          totalPrice: dt["totalPrice"],
          shopkeeperName: dt["shopkeeperName"],
          shopName: dt["shopName"]);
    }).toList();
  }

  Stream<List<Request>> get request {
    return collectionReference.snapshots().map(requestListFromSnap);
  }
}

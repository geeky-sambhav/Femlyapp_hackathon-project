import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mad_project/modals/user.dart';

class UserDatabase {
  String uid, phone;
  UserDatabase({this.uid, this.phone});

  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('user');

  Future deleteUser() async {
    return await collectionReference.doc(uid).delete();
  }

  Future addRequestId(List<String> requestIds) async {
    await collectionReference.doc(uid).update({"requestIds": requestIds});
  }

  Future updateMenstrualDetails(
      int mLength, int pLength, List<DateTime> lDate) async {
    await collectionReference.doc(uid).update({
      "menstrualLength": mLength,
      "periodLength": pLength,
      "lastMenstruation": lDate.map((e) => e.toIso8601String()).toList(),
    });
  }

  Future updateUserData(AppUser user) async {
    return await collectionReference.doc(uid).set({
      "uid": user.uid,
      "name": user.name,
      "number": user.phoneNumber,
      "address": user.address,
      "menstrualLength": user.menstrualLength,
      "periodLength": user.periodLength,
      "lastMenstruation":
          user.lastMenstruation.map((e) => e.toIso8601String()).toList(),
      "requestIds": user.requestIds
    });
  }

  List<DateTime> dynamicToDateTime(List<dynamic> l) {
    List<DateTime> res = List();
    for (String s in l) res.add(DateTime.parse(s));
    return res;
  }

  Stream<AppUser> get user {
    Stream<DocumentSnapshot> user = collectionReference.doc(uid).snapshots();
    return user.map((DocumentSnapshot snapshot) {
      if (snapshot.exists == true && snapshot.data != null) {
        dynamic dt = Map<String, dynamic>.from(snapshot.data());
        return AppUser(
            uid: dt["uid"],
            name: dt["name"],
            phoneNumber: dt["number"],
            address: dt["address"],
            menstrualLength: dt["menstrualLength"],
            periodLength: dt["periodLength"],
            lastMenstruation: dynamicToDateTime(dt["lastMenstruation"]),
            requestIds: dt["requestIds"].cast<String>());
      } else {
        if (snapshot.exists == false) {
          AppUser user = AppUser(
              uid: uid,
              name: "User",
              phoneNumber: phone,
              address: "",
              menstrualLength: 3,
              periodLength: 28,
              lastMenstruation: [],
              requestIds: []);
          updateUserData(user);
          return user;
        } else {
          return null;
        }
      }
    });
  }
}

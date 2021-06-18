import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tafukada/models/pasien.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> savePasien(Pasien pasien) {
    return _db
        .collection('DataPasien')
        .doc(pasien.idPasien)
        .set(pasien.toMap());
  }

  Stream<List<Pasien>> getPasien() {
    return _db.collection('DataPasien').snapshots().map((snapshot) => snapshot
        .docs
        .map((document) => Pasien.fromFirestore(document.data()))
        .toList());
  }

  Future<void> removePasien(String idPasien) {
    return _db.collection('DataPasien').doc(idPasien).delete();
  }
}

import 'package:tafukada/models/pasien.dart';
import 'package:tafukada/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class PasienProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  String _nama;
  int _usia;
  String _keluhan;
  String _idPasien;
  var uuid = Uuid();

  //Getters
  String get nama => _nama;
  int get usia => _usia;
  String get keluhan => _keluhan;

  //Setters
  changeName(String value) {
    _nama = value;
    notifyListeners();
  }

  changeUsia(String value) {
    _usia = int.parse(value);
    notifyListeners();
  }

  changeKeluhan(String value) {
    _keluhan = value;
    notifyListeners();
  }

  loadValues(Pasien pasien) {
    _nama = pasien.nama;
    _usia = pasien.usia;
    _keluhan = pasien.keluhan;
    _idPasien = pasien.idPasien;
  }

  savePasien() {
    print(_idPasien);
    if (_idPasien == null) {
      var newPasien =
          Pasien(nama: nama, usia: usia, keluhan: keluhan, idPasien: uuid.v4());
      firestoreService.savePasien(newPasien);
    } else {
      var updatedPasien =
          Pasien(nama: nama, usia: usia, keluhan: keluhan, idPasien: _idPasien);
      firestoreService.savePasien(updatedPasien);
    }
  }

  removePasien(String idPasien) {
    firestoreService.removePasien(idPasien);
  }
}

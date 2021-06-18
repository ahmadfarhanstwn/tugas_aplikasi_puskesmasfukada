class Pasien {
  final String idPasien;
  final String nama;
  final int usia;
  final String keluhan;

  Pasien({this.idPasien, this.nama, this.usia, this.keluhan});

  Map<String, dynamic> toMap() {
    return {
      'idPasien': idPasien,
      'Nama': nama,
      'Usia': usia,
      'Keluhan': keluhan
    };
  }

  Pasien.fromFirestore(Map firestore)
      : idPasien = firestore['idPasien'],
        nama = firestore['Nama'],
        usia = firestore['Usia'],
        keluhan = firestore['Keluhan'];
}

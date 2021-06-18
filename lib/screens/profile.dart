import 'package:flutter/material.dart';
import 'package:tafukada/screens/nav_drawer.dart';

class ProfilePuskesmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Profil Puskesmas Fukada'),
      ),
      body: ProfileContent(),
    );
  }
}

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 40.0),
      padding: const EdgeInsets.all(3.0),
      height: 400.0,
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.white,
        width: 2.0,
      )),
      child: Expanded(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Text(
              'Tentang Puskesmas Fukada',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(''),
            Text(
                'Puskesmas Fukada merupakan sebuah puskesmas yang didirikan oleh Hj. Ummi Fukada pada tahun 1998. Hj. Ummi Fukada mendirikan puskesmas ini sebagai tempat untuk mengakomodir segala kebutuhan kesehatan masyarakat tanpa terkecuali.'),
            Text(''),
            Text(
              'Visi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(''),
            Text(
                'Menjadi Mitra masyarakat untuk menunjang Tercapainya Masyarakat yang Sehat dan Mandiri'),
            Text(''),
            Text(
              'Misi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(''),
            Text('1. Memberikan Pelayanan Prima di Bidang Kesehatan'),
            Text(
                '2. Mengedepankan Profesionalisme dalam memberikan kesehatan sesuai Standar Operasional Prosedur (SOP)'),
            Text('3. Menjalin kemitraan dengan semua Unsur Masyarakat'),
            Text(''),
            Text(
              'Lokasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(''),
            Text('Jl. Empu Ladusingh no. 88 Kota Weicing')
          ],
        ),
      )),
    );
  }
}

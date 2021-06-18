import 'package:tafukada/models/pasien.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/pasien_provider.dart';

class EditPasien extends StatefulWidget {
  final Pasien pasien;

  EditPasien([this.pasien]);

  @override
  _EditPasienState createState() => _EditPasienState();
}

class _EditPasienState extends State<EditPasien> {
  final nameController = TextEditingController();
  final usiaController = TextEditingController();
  final keluhanController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    usiaController.dispose();
    keluhanController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.pasien == null) {
      //Menambah Record Baru
      nameController.text = '';
      usiaController.text = '';
      keluhanController.text = '';
      new Future.delayed(Duration.zero, () {
        final pasienProvider =
            Provider.of<PasienProvider>(context, listen: false);
        pasienProvider.loadValues(Pasien());
      });
    } else {
      //Update Controller
      nameController.text = widget.pasien.nama;
      usiaController.text = widget.pasien.usia.toString();
      keluhanController.text = widget.pasien.keluhan;
      new Future.delayed(Duration.zero, () {
        final pasienProvider =
            Provider.of<PasienProvider>(context, listen: false);
        pasienProvider.loadValues(widget.pasien);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pasienProvider = Provider.of<PasienProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Pasien'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Nama Pasien'),
              onChanged: (value) {
                pasienProvider.changeName(value);
              },
            ),
            TextField(
              controller: usiaController,
              decoration: InputDecoration(hintText: 'Usia Pasien'),
              onChanged: (value) {
                pasienProvider.changeUsia(value);
              },
            ),
            TextField(
              controller: keluhanController,
              decoration: InputDecoration(hintText: 'Keluhan Pasien'),
              onChanged: (value) {
                pasienProvider.changeKeluhan(value);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              child: Text('Save'),
              onPressed: () {
                pasienProvider.savePasien();
                Navigator.of(context).pop();
              },
            ),
            (widget.pasien != null)
                ? RaisedButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('Delete'),
                    onPressed: () {
                      pasienProvider.removePasien(widget.pasien.idPasien);
                      Navigator.of(context).pop();
                    },
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

import 'package:tafukada/screens/edit_pasien.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/pasien.dart';
import 'package:tafukada/screens/nav_drawer.dart';

class DataPasien extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataPasien = Provider.of<List<Pasien>>(context);
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Data Pasien'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EditPasien()));
            },
          )
        ],
      ),
      body: (dataPasien != null)
          ? ListView.builder(
              itemCount: dataPasien.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    '${dataPasien[index].nama} (${dataPasien[index].usia.toString()})',
                  ),
                  subtitle: Text('Keluhan : ${dataPasien[index].keluhan}'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EditPasien(dataPasien[index])));
                  },
                );
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

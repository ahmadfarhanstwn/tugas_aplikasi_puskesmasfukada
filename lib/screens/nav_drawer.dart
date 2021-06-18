import 'package:flutter/material.dart';
import 'package:tafukada/screens/about_developer.dart';
import 'package:tafukada/screens/data_pasien.dart';
import 'package:tafukada/screens/profile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'P',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DataPasien()))
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text('Profil Puskesmas Fukada'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePuskesmas()))
            },
          ),
          ListTile(
            leading: Icon(Icons.developer_mode),
            title: Text('Tentang Developer'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutDeveloper()))
            },
          ),
        ],
      ),
    );
  }
}

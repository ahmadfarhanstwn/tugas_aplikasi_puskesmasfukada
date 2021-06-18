import 'package:flutter/material.dart';
import 'package:tafukada/screens/nav_drawer.dart';

class AboutDeveloper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Tentang Developer'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ahmad.png'),
            ),
            title: Text('Ahmad Farhan Setiawan'),
            subtitle: Text('065118240'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/nizar.png'),
            ),
            title: Text('Ahmad Nizar'),
            subtitle: Text('065118238'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/empu.png'),
            ),
            title: Text('Empu Gerhana'),
            subtitle: Text('065118231'),
          ),
        ],
      ),
    );
  }
}

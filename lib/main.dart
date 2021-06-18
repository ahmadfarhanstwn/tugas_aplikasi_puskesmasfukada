import 'package:firebase_core/firebase_core.dart';
import 'package:tafukada/providers/pasien_provider.dart';
import 'package:tafukada/screens/data_pasien.dart';
import 'package:tafukada/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firestoreService = FirestoreService();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PasienProvider()),
        StreamProvider(create: (context) => firestoreService.getPasien())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Puskesmas Fukada',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          brightness: Brightness.dark,
        ),
        home: DataPasien(),
      ),
    );
  }
}

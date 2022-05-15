import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyBKU9EzeFdI7X6HSuM_qlqzm373RkYGU24',
          appId: 'project-962124875466',
          messagingSenderId: '962124875466',
          projectId: 'intromobile-26f08'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: Colors.red[800]),
      ),
      home: const MyHomePage(title: 'Intro Mobile'),
    );
  }
}


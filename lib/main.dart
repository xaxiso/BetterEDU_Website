import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plswork/firebase_options.dart';
import 'package:plswork/views/home/home_view.dart';

// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(const MyApp());
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: HomeView()
    );
  }
}

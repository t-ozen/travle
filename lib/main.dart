import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travleapp/screens/welcome.dart';

Future<void> main() async {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
   inital();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: const Color(0xFFF3F0F0),
      ),
      home: welcome(),
    );
  }
}

Future<void> inital() async{
 await Firebase.initializeApp();
 WidgetsFlutterBinding.ensureInitialized();
}





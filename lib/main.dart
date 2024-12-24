import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'Routes.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyBgEn3CmxmRmbIa2uEPL2l732hrWiPb_1c',
        appId: '1:56301313056:web:3eb45e78387823b15e7045',
        messagingSenderId: '56301313056',
        projectId: 'harsh-potfolio',
        authDomain: 'harsh-potfolio.firebaseapp.com',
        storageBucket: 'harsh-potfolio.appspot.com',
        measurementId: 'G-4W0SC65SCF',
      )
    );
  }
  else{
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform
    );
  }

  setPathUrlStrategy();
  print("Hello");
  runApp(MyApp());
  print("Hello");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}


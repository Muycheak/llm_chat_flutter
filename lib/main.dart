import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:llm_chat/chat_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initFirebaseAndGoogleConfigure();
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      home: ChatScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

Future<void> _initFirebaseAndGoogleConfigure() async {
  if (Platform.isIOS) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyCoNH8ROTOop-Wf4AGPz5Yf52Mi1cjaJk4',
        appId: '1:912460903212:ios:783a4d6f51cff9ec993289',
        messagingSenderId: '912460903212',
        projectId: 'llm-chat-flutter',
        storageBucket: 'llm-chat-flutter.firebasestorage.app',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
}

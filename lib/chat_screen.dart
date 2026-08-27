import 'package:flutter/material.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: LlmChatView(
        provider: FirebaseProvider(
          model: FirebaseAI.googleAI().generativeModel(
            model: 'gemini-2.0-flash',
          ),
        ),
      ),
    );
  }
}

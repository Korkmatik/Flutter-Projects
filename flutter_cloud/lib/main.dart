import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'note.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: Text("Messenger App"),
            ),
            body: Note(),
          ),
        );
      }
    );
  }
}

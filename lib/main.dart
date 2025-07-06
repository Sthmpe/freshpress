import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshpress/app.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 🔹 Make status bar transparent
      statusBarIconBrightness: Brightness.dark, // or Brightness.light for white icons
    ),
  );
  runApp(const App());
}


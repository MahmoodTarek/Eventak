import 'package:eventak/eventak_app.dart';
import 'package:eventak/provider/language_provider.dart';
import 'package:eventak/provider/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguageProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: EventakApp(),
    ),
  );
}

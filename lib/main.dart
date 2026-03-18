import 'package:eventak/eventak_app.dart';
import 'package:eventak/provider/language_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(ChangeNotifierProvider<LanguageProvider>(
      create: (BuildContext context) => LanguageProvider(),
      child: EventakApp())
  );
}

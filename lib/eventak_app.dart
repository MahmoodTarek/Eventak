import 'package:eventak/l10n/app_localizations.dart';
import 'package:eventak/ui/screens/home/home.dart';
import 'package:eventak/utils/resources/app_routes.dart';
import 'package:flutter/material.dart';

class EventakApp extends StatelessWidget {
  const EventakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventak',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('ar'),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const Home(),
      },
    );
  }
}

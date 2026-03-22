import 'package:eventak/provider/language_provider.dart';
import 'package:eventak/provider/theme_provider.dart';
import 'package:eventak/ui/screens/home/home.dart';
import 'package:eventak/utils/resources/app_routes.dart';
import 'package:eventak/utils/resources/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'l10n/app_localizations.dart';

class EventakApp extends StatelessWidget {
  const EventakApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Eventak',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(languageProvider.currentLanguage),
      routes: {AppRoutes.home: (context) => const Home()},
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.currentTheme,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/heartprovider.dart';
import 'package:travelappanimation/controller/locale_provider.dart';
import 'package:travelappanimation/controller/tripprovider.dart';
import 'package:travelappanimation/l10n/l10n.dart';
import 'package:travelappanimation/view/mainandmenuscreen/mainandmenuscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocaleProvider()),
        ChangeNotifierProvider(create: (context) => HeartProvider()),
          ChangeNotifierProvider(create: (context) => TripProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       supportedLocales:L10n.all,
      locale:Provider.of<LocaleProvider>(context).locale,
     
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      debugShowCheckedModeBanner: false,
      title: 'travelApp',
      home:MainAndMenuScreen(),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappanimation/controller/heartprovider.dart';
import 'package:travelappanimation/controller/tripprovider.dart';
import 'package:travelappanimation/view/mainandmenuscreen/mainandmenuscreen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const[Locale('en','US'),Locale('ar','AE')],
    path: 'assets/translation',
    fallbackLocale: const Locale('en','US'),
    saveLocale: true,
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => HeartProvider(), ),
         ChangeNotifierProvider(create:(context) => TripProvider(), ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        title: 'travelApp',
        home:MainAndMenuScreen(),
      ),
    );
  }
}

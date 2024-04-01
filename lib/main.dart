import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
//import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:medical_dental_blue/home.dart';
import 'package:medical_dental_blue/languages_class.dart';
import 'package:medical_dental_blue/loading_screen.dart';
//import 'package:unident_app/home_screen.dart';
//import 'package:unident_app/my_account.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medical_dental_blue/terms_and_conditions_screen.dart';
import '../utils/shared_pref_keys.dart' as pref_keys;
import 'package:medical_dental_blue/utils/classes.dart';
import 'package:medical_dental_blue/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medical_dental_blue/utils/api_firebase.dart';
//import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';
//import 'package:unident_app/clinics_list_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
  
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); //old IGV
  
  //await FirebaseApi().initNotifications();
  
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var loggedIn = prefs.getBool('loggedIn')?? false;
  var termeniSiConditii = prefs.getBool('termeniSiConditii')?? false;
  Shared.limba = (prefs.getString(pref_keys.idLimba) == '2')? LanguageEN(): LanguageRO();
  print('Logged in $loggedIn termeni și condiții $termeniSiConditii');

  // var firstTime = prefs.getBool('firstTime');
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      // localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const [Locale('en'), Locale('ro')],
      
      home: loggedIn == true? LoadingScreen() : termeniSiConditii == false? LoadingScreen() : TermsAndConditionsScreen(), //loggedIn == true ? LoadingScreen() : TermsAndConditionsScreen(),


      //home: TermsAndConditionsScreen(),
      debugShowCheckedModeBanner: false,
      // home: firstTime == true
      //     ? const TermsAndConditionsScreen()
      //     : loggedIn == true
      //         ? const MyApp()
      //         : const LoginScreen(), //Andrei Badescu
      // home: MyApp(),
      // theme: ThemeData(
      //   textTheme: GoogleFonts.openSansTextTheme(),
      // ), // use MaterialApp
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}
// ignore_for_file: avoid_print
//import 'package:unident_app/utils/api_call_functions.dart';
import 'package:medical_dental_blue/utils/classes.dart';

import './shared_pref_keys.dart' as pref_keys;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('Title: ${message.notification?.title}');
  print('Title: ${message.notification?.body}');
  print('Title: ${message.data}');
}

// Updates the User's FCM Token in the DB
Future<void> saveTokenToDB() async {
  //ApiCallFunctions apiCallFunctions = ApiCallFunctions();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final firebaseToken = await FirebaseMessaging.instance.getToken() ?? '';

  print('saveTokenToDB token: $firebaseToken');

  prefs.setString(pref_keys.fcmToken, firebaseToken);
  
  /*

  String? res = await apiCallFunctions.updateDeviceID(
    pAdresaEmail: prefs.getString(pref_keys.userEmail) ?? "User has not registered yet!",
    pFirebaseGoogleDeviceID: prefs.getString(pref_keys.fcmToken)!,
    //pFirebaseGoogleDeviceID: firebaseToken,
    pParolaMD5: prefs.getString(pref_keys.userPassMD5) ?? "User has not registered yet!",
    pPrimesteNotificari: prefs.getString(pref_keys.pPrimesteNotificari) ?? "0",
  );


//  print('saveTokenToDB Rezultat $res');

  if (res == null) {
    print("Error: Could not save token!");
    return;
  } else if (res.startsWith('66')) {
    print("Error: Could not save token!");
    return;
  } else if (res.startsWith('13')) {
    print("Succes, token saved!");
    return;
  } else {
    print("Unkown error saving token!");
    return;
  }
  
  */

}

class FirebaseApi {
  late Stream<String> _tokenStream;
  final firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    NotificationSettings settings = await firebaseMessaging.requestPermission();
    print('Aici settings requestPermission ');
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('Aici settings requestPermission ');
      prefs.setString(pref_keys.pPrimesteNotificari, '1');
      print('User granted permission');
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      prefs.setString(pref_keys.pPrimesteNotificari, '0');

      print('User granted provisional permission');
    } else {
      print('User declined or has not accepted permission');
      prefs.setString(pref_keys.pPrimesteNotificari, '0');
    }
    final fcmToken = await firebaseMessaging.getToken() ?? "Error: Could not retrieve token!";
    Shared.FCMtoken = fcmToken;
    //saveTokenToDB();
    _tokenStream = FirebaseMessaging.instance.onTokenRefresh;
    //_tokenStream.listen(saveTokenToDB);
    print('Token: $fcmToken');
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');
      print('Message data: ${message.data}');
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });
  }
}

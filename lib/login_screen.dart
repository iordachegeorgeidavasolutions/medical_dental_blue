// TODO
// The main idea is the following: Loading the doctors everytime HomeScreen is initialized is not a good idea because it takes
// of time to process and the doctors dont really change, so we can load them once and then use them in the HomeScreen, and only
// the doctors populated using the getListaMediciFiltrati function which change and the user needs to see the changes as fast an often
// as possible, maybe even using a Stream in order to constantly update it every 10 seconds or so would be a better approach, but for now
// this is the closest to that without investing time to change the architecture
import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:medical_dental_blue/home.dart';
//import 'package:medical_dental_blue/login.dart';
//import 'package:medical_dental_blue/utils/api_call_functions.dart';
import 'package:medical_dental_blue/utils/classes.dart';
import '../utils/shared_pref_keys.dart' as pref_keys;


class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width,
        color: Colors.white,
        /*
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xFFC4A462),
            // Color(0xFFC53C5D),
            Color(0xFF22226C),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        */
        child: 
        Column(
          children: [
            Image.asset(
              './assets/images/logo_dental_blue_log_in.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              isAntiAlias: true,
            ),
            /*SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            */
            /*
            Stack( 
              children: <Widget> [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/images/imagine_buton.png', fit: BoxFit.fill),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(child: Text('Button'), onPressed: () {})
                )
              ],
            ),
            */
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  const Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/imagine_buton.png'),
                  ),
                  //Positioned.fill(
                  //  child: Align(
                  //    alignment: Alignment.center,
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * 0.3,
                    left: MediaQuery.of(context).size.width*0.45,
                    child: const Text(
                    "Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
  login(BuildContext context) async {
    
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // final token = await FirebaseMessaging.instance.getToken() ?? '';
    
    //print('User Email- ${pref_keys.userEmail} user password - ${pref_keys.userPassMD5}');

    String? res = await apiCallFunctions.login(
        pAdresaEmail: prefs.getString(pref_keys.userEmail) ?? '',
        pParolaMD5: prefs.getString(pref_keys.userPassMD5) ?? '',
        pFirebaseGoogleDeviceID:
            prefs.getString(pref_keys.fcmToken) ?? "FCM Token not available in Shared Preferences");

    print('Loading screen rezultat: $res');
    
    if (res == null) {
      return;
      // } else if (res.startsWith('161')) {
      //   showsnackbar(
      //     context,
      //     "Date de login varule!",
      //   );
      // return;
    } else if (res.startsWith('66')) {
      Navigator.of(context)
          .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);
    } else if (res.startsWith('264')) {
      return;
    } else if (res.contains('\$#\$')) {}
  }
  //}
  
}
*/

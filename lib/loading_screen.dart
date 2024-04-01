// TODO
// The main idea is the following: Loading the doctors everytime HomeScreen is initialized is not a good idea because it takes
// of time to process and the doctors dont really change, so we can load them once and then use them in the HomeScreen, and only
// the doctors populated using the getListaMediciFiltrati function which change and the user needs to see the changes as fast an often
// as possible, maybe even using a Stream in order to constantly update it every 10 seconds or so would be a better approach, but for now
// this is the closest to that without investing time to change the architecture
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:medical_dental_blue/home.dart';
import 'package:medical_dental_blue/login_screen.dart';
//import 'package:medical_dental_blue/utils/api_call_functions.dart';
import 'package:medical_dental_blue/utils/classes.dart';
import '../utils/shared_pref_keys.dart' as pref_keys;

class LoadingScreen extends StatefulWidget {

  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();

}

class _LoadingScreenState extends State<LoadingScreen> {
  //ApiCallFunctions apiCallFunctions = ApiCallFunctions();
  @override
  void initState() {
    // (setPage);
    super.initState();
    loginScreen(context);
    //login(context);
    //loadData();
  }

loginScreen(BuildContext context) async 
{

  Navigator.of(context)
          .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false);

}
/*
  loadData() async {
    List<Medic>? meds = await apiCallFunctions.getListaMedici();

    Shared.medici.clear();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String idSediu = prefs.getString(pref_keys.idSediuUser)!;
    
    // List<MedicSlotLiber>? medsFiltrati = await apiCallFunctions.getListaMediciSlotLiber();
    if (meds != null) {

      meds.retainWhere((medic)=> medic.listaSedii.contains(idSediu));
      Shared.medici.addAll(meds);
      
    }
    
    navigateToHome(); // if (medsFiltrati != null) {
    //   Shared.mediciFiltrati.addAll(medsFiltrati);
    // }
  }

  navigateToHome() {
    //print('Aici: $mounted');
    if (mounted) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const Home();
      }));
    }
  }

  navigateToLoginScreen() {
    //print('Aici: $mounted');
    if (mounted) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    }
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        /*
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xFFC4A462),
            // Color(0xFFC53C5D),
            Color(0xFF22226C),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        */
        child: Image.asset(
          './assets/images/logo_dental_blue.png',
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          isAntiAlias: true,
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

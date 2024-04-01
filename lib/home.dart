import 'package:flutter/material.dart';
//import 'package:unident_app/clinics_info_screen.dart';
//import 'package:unident_app/documents_list_screen.dart';
//import 'package:unident_app/programari_screen.dart';
// import 'package:unident_app/feedback_screen.dart';
// import 'package:unident_app/glisare_imagini_screen_IGV_only.dart';
// import 'package:unident_app/password_reset.dart';
//import 'package:unident_app/redirect_promotii_lunare.dart';
//import 'package:unident_app/redirect_turism_screen.dart';
//import 'package:unident_app/solicita_programare.dart';
// import 'package:unident_app/terms_and_conditions_screen.dart';
//import 'package:unident_app/contact_screen.dart';
// import 'package:unident_app/doctor_details_screen.dart';
//import 'package:unident_app/home_screen.dart';
// import 'package:unident_app/login.dart';
//import 'package:unident_app/my_account.dart';
// import 'package:unident_app/programari_screen.dart';
// import 'package:unident_app/register.dart';
// import 'package:unident_app/main.dart';
//import 'package:unident_app/our_medics.dart';
//import 'package:unident_app/tratamente.dart';
//import 'package:unident_app/redirect_tarife.dart';
//import 'package:unident_app/utils/api_call_functions.dart';
//import 'package:unident_app/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/shared_pref_keys.dart' as pref_keys;


//import 'package:unident_app/utils/api_call.dart';
//import 'package:unident_app/utils/api_call_functions.dart';
//import 'package:unident_app/utils/classes.dart';
//import 'package:unident_app/utils/functions.dart';


import "package:collection/collection.dart";

//final _drawerController = ZoomDrawerController();
// final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//ApiCallFunctions apiCallFunctions = ApiCallFunctions();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// TODO : NAVBAR REACTS TO THE PRESSES ON THE DRAWER
class _HomeState extends State<Home> {
  int currentIndexDrawer = 0;
  bool isClicked = false;
  int selectedIndex = -1;
  var currentIndexNavBar = 0;
  String denumireSediuUser = '';

  /*
  Map<String, List<Medic>>? groupedMedicsByCity;

  ApiCallFunctions apiCallFunctions = ApiCallFunctions();
  Future<Programari?>? programari;
  Future<Programari?>? programariCopil;
  List<Programare> viitoare = <Programare>[];
  List<Programare> trecute = <Programare>[];
  List<Programare> viitoareCopil = <Programare>[];
  List<Programare> trecuteCopil = <Programare>[];
  ApiCall apiCall = ApiCall();
  */

    @override
  void initState() {
    // (setPage);
    super.initState();
    
    //_filterAndDestroy();

    //getListaProgramari();
    //getListaProgramariCopil();

    setState(() {
      
    });
  }

/*
  Future <Map<String, List<Medic>>> filterAndDestroy() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String idSediu = prefs.getString(pref_keys.idSediuUser)!;
    String sediu = prefs.getString(pref_keys.denumireSediuUser)!;

    denumireSediuUser = sediu;

    Map<String, List<Medic>> groupedMedics = groupBy(Shared.medici, (Medic medic) => (medic.listaSedii.contains(idSediu)? sediu:''));
    
    // print(groupedMedics);

    //for (var medic in groupedMedics.values)
    //for(int index = 0; index < groupedMedics.length; index++)
    
    for (var city in groupedMedics.keys)
    {  
      for(int index = 0; index < groupedMedics[city]!.length; index ++)
      {
        print('filterAndDestroy ... groupedMedics = ${groupedMedics[city]![index].listaSedii}, ${idSediu}');
      }
    }
    return groupedMedics;
    // Generare de lista care contine listele cu doctori per fiecare sediu
    // for () {};
  }

  Future<void> _filterAndDestroy() async {
    groupedMedicsByCity = await filterAndDestroy();
    groupedMedicsByCity?.removeWhere((key, value) => key == '');
  }

*/



  void setPage(index) {
    setState(() {
      currentIndexDrawer = index;
      if (index == 9) {
        currentIndexNavBar = 3;
      } else if (index == 10) {
        currentIndexNavBar = 1;
      } else if (index >= 3) {
        currentIndexNavBar = -1;
      } else if (index == 0) {
        currentIndexNavBar = 0;
      } else if (index == 1) {
        currentIndexNavBar = -1;
      } else if (index == 2) {
        currentIndexNavBar = 2;
      }
    });
    //_drawerController.close!();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // key: scaffoldKey,
      
    );
  }

  Future<void> reseteazaLoginData() async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(pref_keys.userPassMD5, '');
    prefs.setString(pref_keys.userIdInregistrare, '');
    prefs.setString(pref_keys.userNume, '');
    prefs.setString(pref_keys.userPrenume, '');
    prefs.setString(pref_keys.userIdPacientAsociat, '');
    prefs.setString(pref_keys.userVip, '');
    prefs.setString(pref_keys.userNeserios, '');
    prefs.setString(pref_keys.userDDN, '');
    prefs.setString(pref_keys.userSex, '');
    prefs.setString(pref_keys.userIdAjustareCurenta, '');
    prefs.setString(pref_keys.userDataInceputAjustare, '');
    prefs.setString(pref_keys.userDataSfarsitAjustare, '');
    prefs.setString(pref_keys.dataAsociere, '');
    prefs.setString(pref_keys.userDataFisa, '');
    prefs.setString(pref_keys.userTelefon, '');
    prefs.setString(pref_keys.userEmail, '');
    prefs.setString(pref_keys.userNumarPuncteAcumulate, '');
    prefs.setString(pref_keys.userUltimaDataAsociere, '');
    prefs.setString(pref_keys.userTotalPuncteNivelMediu, '');
    prefs.setString(pref_keys.userTotalPuncteNivelSuperior, '');
    prefs.setString(pref_keys.idSediuUser, '');
    prefs.setString(pref_keys.permiteIntroducereaDeProgramari, '');
    prefs.setBool(pref_keys.loggedIn, false);
    //prefs.setBool(pref_keys.termeniSiConditii, false);
    //prefs.setBool(pref_keys.firstTime, false);
    
    //prefs.clear(); IGV

  }

/*
  Widget currentScreen() {
    switch (currentIndexDrawer) {
      case 0:
        return const HomeScreen();
      case 1:
        return const SolicitaProgramareScreen(programareAdaugata: false,);
      case 2:
        return const TratamenteScreen();
      case 3:
        return const RedirectTarif();
      case 4:
        return OurMedicsScreen(groupedMedicsByCity: groupedMedicsByCity!, denumireSediuUser: denumireSediuUser,);
      case 5:
        return const ClinicsGlisareImaginiScreen();
      case 6:
        return const RedirectPromotiiLunare();
      case 7:
        return const RedirectTurism();
      case 8:
        return const ClinicsScreen();
      case 9:
        return const MyAccountScreen();
      case 10:
        return ProgramariScreen();
        //programari: programari, programariCopil: programariCopil, viitoare: viitoare, viitoareCopil: viitoareCopil, trecute: trecute, trecuteCopil: trecuteCopil,
      case 11:
        reseteazaLoginData();
        return const LoginScreen();
      default:
        return const HomeScreen();
    }
  }
*/
}

/*
class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}
*/

/*
class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(57, 52, 118, 1),
      body: 
      SingleChildScrollView( //added by IGV
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                ),
                //drawerList(Icons.home, "Acasă", 0), //old Andrei Bădescu
                drawerList(Icons.home, Shared.limba.textAcasaMeniu, 0),
                
                //drawerList(Icons.send, "Solicită o programare", 1), //old Andrei Bădescu
                drawerList(Icons.send, Shared.limba.textSolicitaProgramareMeniu, 1),
        
                //drawerList(Icons.calendar_month, "Planul de tratament", 2), //old Andrei Bădescu
                drawerList(Icons.calendar_month, Shared.limba.textPlanTratamentMeniu, 2),
        
                //drawerList(Icons.attach_money_outlined, "Tarife", 3), //old Andrei Bădescu
                drawerList(Icons.attach_money_outlined, Shared.limba.textTarifeMeniu, 3), //old Andrei Bădescu
        
                //drawerList(Icons.people_alt, "Medici", 4), //old Andrei Bădescu
                drawerList(Icons.people_alt, Shared.limba.textMediciMeniu, 4),
        
                //drawerList(Icons.location_on_outlined, "Clinicile Unident", 5), // old Andrei Bădescu
                drawerList(Icons.people_alt, Shared.limba.textCliniciMeniu, 5),
        
                //drawerList(Icons.star_border, "Oferte", 6), //old Andrei Bădescu
                drawerList(Icons.star_border, Shared.limba.textOferteMeniu, 6),
        
                //drawerList(Icons.airplanemode_active_rounded, "Turism dentar", 7), //old Andrei Bădescu
                drawerList(Icons.airplanemode_active_rounded, Shared.limba.textTurismMeniu, 7),
        
        
                //drawerList(Icons.contact_page_outlined, "Contact", 8), //old Andrei Bădescu
                drawerList(Icons.contact_page_outlined, Shared.limba.textContactMeniu, 8),
        
                //drawerList(Icons.account_box_outlined, "Contul meu", 9), //old Andrei Bădescu
                drawerList(Icons.account_box_outlined, Shared.limba.textContulMeuMeniu, 9),
        
                //drawerList(Icons.logout_outlined, "Log out", 11), // old IGV
                drawerList(Icons.logout_outlined, Shared.limba.textLogOutMeniu, 11),
                //IGV
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  child: Image.asset('./assets/images/unident-alb.png', height: 35),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
*/
/*
  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
        _drawerController.close!();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, bottom: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: const Icon(Icons.menu),
    );
  }
}
*/

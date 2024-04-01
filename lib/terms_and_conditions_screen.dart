import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
//import 'package:medical_dental_blue/login.dart';
import '../utils/shared_pref_keys.dart' as pref_keys;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:medical_dental_blue/utils/classes.dart';

import 'package:medical_dental_blue/languages_class.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() => _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  bool valueCheck = false;
  bool languageRo = true;
  int selectedValueLimba = 0;

  @override
  void initState() {
    
    // (setPage);
    super.initState();
    languageRo = true;
    Shared.limba = LanguageRO();

  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            Color(0xFFC4A462),
            // Color(0xFFC53C5D),
            Color(0xFF22226C),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            SizedBox(height: 55),
            Center(
              child: Image.asset('./assets/images/unident-alb.png', height: height * 0.1),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: height * 0.58,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Center(
                      child: Text(
                    //'Termeni și Condiții', //old Andrei Bădescu
                    Shared.limba.textTitluTermeniSiConditii,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(height: 10),
                  Container(
                    height: height * 0.4,
                    //child: const PrivacyDialog(mdFileName: "terms_and_conditions.md"), //old Andrei Bădescu
                    child: PrivacyDialog(mdFileName: Shared.limba.textMdTermeniSiConditii),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: valueCheck,
                        onChanged: (value) {
                          setState(() {
                            valueCheck = value!;
                            //print(valueCheck);
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: 
                        //const Text('Sunt de acord cu termenii și condițiile propuse de aplicația MyUnident',
                        Text(Shared.limba.textAcordTermeniSiConditii,
                            maxLines: 3, style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
                      ), //Text
                      const SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row (
              children: [
                Container(
                  margin: EdgeInsets.only(right: 30,),
                  child:Text(
                    //'Alegeți limba', //old George Valentin Iordache
                    Shared.limba.textLimbaTermeniSiConditii,
                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: languageRo? Colors.grey: Colors.transparent,
                        width: 5,
                      )),
                  ),
                  child: IconButton(
                    icon:Image.asset('./assets/images/romania_flag_small.png'),
                    onPressed: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      setState(() {
                        prefs.setString(pref_keys.idLimba, '1');
                        Shared.limba = LanguageRO();
                        languageRo = true;
                      });
                    }
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: languageRo? Colors.transparent: Colors.grey,
                        width: 5,
                      )),
                  ),
                  child: IconButton(
                    icon:Image.asset('./assets/images/british_flag_small.png'),
                    onPressed: () async {
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      setState(() {
                        prefs.setString(pref_keys.idLimba, '2');
                        Shared.limba = LanguageEN();
                        languageRo = false;
                      });
                    }
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: valueCheck
                  ? () async {
                    
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool(pref_keys.termeniSiConditii, false);
                      /*
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const LoginScreen();
                      }));
                      */
                    }
                  : null,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: valueCheck ? Color.fromRGBO(195, 161, 110, 1) : Colors.grey,
                ),
                height: height * 0.08,
                child: Center(
                    child: Text(
                  //'ÎNAINTE', //old Andrei Bădescu
                  Shared.limba.textInainteTermeniSiConditii,
                  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PrivacyDialog extends StatelessWidget {
  const PrivacyDialog({super.key, required this.mdFileName});
  final String mdFileName;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: FutureBuilder(
          future: Future.delayed(const Duration(milliseconds: 150)).then((value) {
            return rootBundle.loadString('assets/images/terms&conditions/$mdFileName');
          }),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Markdown(data: snapshot.data!);
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    ]);
  }
}

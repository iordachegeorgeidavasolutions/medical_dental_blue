import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:medical_dental_blue/languages_class.dart';
import '../utils/shared_pref_keys.dart' as pref_keys;
import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  
  static GlobalKey<NavigatorState> sharedNavigatorKey = GlobalKey<NavigatorState>();
  // static String flavor = '';
  static String FCMtoken = '';
  static String idMembruFamilieConectat = '_';
  static String sediuPacient = '';
  static List<Medic> medici = <Medic>[];
  static List<Medic> mediciFiltratiSediu = <Medic>[];
  static List<MedicSlotLiber> mediciFiltrati = <MedicSlotLiber>[];
  static List<CategorieProgramare> categorii = <CategorieProgramare>[];
  static List<MembruFamilie> familie = <MembruFamilie>[];
  static List<Sediu> sedii = <Sediu>[];
  static String idPacientAsociat = '0';

  //static GenericLanguage limba =  esteEngleza().then(val => val == true) ?  LanguageEN() : LanguageRO();
  static GenericLanguage limba = LanguageEN();

}

class CategorieProgramare {
  final String id;
  final String nume;
  final Color culoare;
  bool selected;
  List<String> idMedici;

  CategorieProgramare(
      {required this.id, required this.nume, required this.culoare, required this.idMedici, this.selected = false});
}

class DosarulMeu {
  final String titlu;
  final Widget widgetRoute;

  DosarulMeu({
    required this.titlu,
    required this.widgetRoute,
  });
}

class Sediu {
  final String id, denumire, adresa, telefon;

  Sediu({required this.id, required this.denumire, required this.adresa, required this.telefon});
}

class Medic {
  final String judet;
  final List<String> profesii;
  final String id;
  final String nume;
  final Uint8List poza;
  final String miniCv;
  final bool areCvDetaliat;
  final List<String> listaCategorii;
  final List<String> listaSedii;
  bool selected;

  Medic({
    required this.profesii,
    required this.judet,
    required this.id,
    required this.nume,
    required this.poza,
    required this.miniCv,
    required this.areCvDetaliat,
    required this.listaSedii,
    this.selected = false,
    required this.listaCategorii,
  });
}

class Clinic {
  final String tel;
  final String mail;
  final String imagePath;
  final String clinicName;
  final String location;
  final String? nume;

  Clinic(
      {required this.tel,
      required this.mail,
      required this.imagePath,
      required this.clinicName,
      required this.location,
      this.nume});
}

class MedicSlotLiber {
  final String idCabinet;
  final String idSediu;
  final String denumireSediu;
  final String judet;
  final String localitate;
  final List<String> profesii;
  final String id;
  final String nume;
  final Uint8List poza;
  final String miniCv;
  final bool areCvDetaliat;
  final List<String> listaCategorii;
  final List<String> listaSedii;
  final DateTime dataPrimulSlotLiber;
  bool selected;

  MedicSlotLiber(
      {required this.idCabinet,
      required this.idSediu,
      required this.denumireSediu,
      required this.judet,
      required this.localitate,
      required this.profesii,
      required this.id,
      required this.nume,
      required this.poza,
      required this.miniCv,
      required this.areCvDetaliat,
      required this.listaSedii,
      this.selected = false,
      required this.listaCategorii,
      required this.dataPrimulSlotLiber});
}

class DetaliiProgramare {
  final String dataInceput;
  final String oraFinal;
  final String numeMedic;
  final String idCategorie;
  final String statusProgramare;
  final String esteAnulat;
  final String numeLocatie;
  final List<String> listaInterventii;

  DetaliiProgramare({
    required this.dataInceput,
    required this.oraFinal,
    required this.numeMedic,
    required this.idCategorie,
    required this.statusProgramare,
    required this.esteAnulat,
    required this.numeLocatie,
    required this.listaInterventii,
  });

  double GetTotal() {
    // print(listaInterventii.map((e) => e.split("*\$*")[6]).toList()[0]);
    // return listaInterventii
    //     .map((e) => e.split("*\$*"))
    //     .where((element) => element.length >= 7)
    //     .map((e) => e[6])
    //     .map((e) => e.replaceAll(RegExp(r'([A-Z\s,])'), ""))
    //     .map((e) => double.parse(e))
    //     .reduce((value, element) => value + element);
    double total = 0;
    print(listaInterventii);
    for (var interv in listaInterventii) {
      if (interv.isEmpty) continue;
      String pretstr = interv.split("*\$*")[6];
      pretstr = pretstr.replaceAll(RegExp(r'([A-Z\s,])'), "");
      print(pretstr);
      double pret = double.parse(pretstr);
      total += pret;
    }
    return total;
  }
}

class Programare {
  final String locatie;
  final String idMedic;
  String hasFeedback;
  final String id;
  final DateTime inceput, sfarsit;
  final String medic, categorie;
  String status, anulata;
  final String idPacient, nume, prenume;

  static const String statusConfirmat = "Confirmat";
  static const String statusAnulat = "Anulat";

  Programare(
      {required this.idMedic,
      required this.locatie,
      required this.hasFeedback,
      required this.id,
      required this.medic,
      required this.anulata,
      required this.categorie,
      required this.inceput,
      required this.sfarsit,
      required this.status,
      required this.idPacient,
      required this.nume,
      required this.prenume});
}

class IntervaleActivitate {
  
  final String idMedic;
  final String idLocatie;
  final String idSediu;
  final DateTime dataInceput, dataSfarsit;

  IntervaleActivitate(
    {
      required this.idMedic,
      required this.idLocatie,
      required this.idSediu,
      required this.dataInceput,
      required this.dataSfarsit,
    }
  );
}

class FetchedDocument {
  final String nume;
  final String id;

  FetchedDocument({required this.nume, required this.id});

}

class LinieFisaTratament {
  final String tipObiect;
  final String idObiect;
  final String numeMedic;
  final String denumireInterventie;
  final String dinti;
  final String observatii;
  final DateTime dataDateTime;
  final String dataString;
  final String pret;
  final Color culoare;
  final DateTime? dataCreareDateTime;
  final String? dataCreareString;
  final String valoareInitiala;

  LinieFisaTratament(
      {required this.tipObiect,
      required this.pret,
      required this.idObiect,
      required this.numeMedic,
      required this.denumireInterventie,
      required this.dinti,
      required this.observatii,
      required this.dataDateTime,
      required this.dataString,
      required this.culoare,
      this.dataCreareDateTime,
      this.dataCreareString,
      required this.valoareInitiala});
}

class DetaliiDoctor {
  final String nrReviewuri;
  final String nrPacienti;
  final String experienta;
  final String notaMedieReview;

  DetaliiDoctor(
      {required this.nrReviewuri, required this.nrPacienti, required this.experienta, required this.notaMedieReview});
}

class Programari {
  List<Programare> viitoare;
  List<Programare> trecute;

  Programari({required this.viitoare, required this.trecute});
}

class MembruFamilie {
  final String id, nume, prenume;

  MembruFamilie({required this.id, required this.nume, required this.prenume});
}

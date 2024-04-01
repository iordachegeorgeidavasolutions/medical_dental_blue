import 'package:flutter/material.dart';
/// Base chat l10n containing all required properties to provide localized copy.
/// Extend this class if you want to create a custom l10n.
@immutable
abstract class GenericLanguage {
  /// Creates a new chat l10n based on provided copy.
  const GenericLanguage({

    required this.textLimba,

    required this.textAcasaHomeScreen,
    required this.textEchipaHomeScreen,
    required this.textNuSuntMediciAlocatiSediului,
    required this.textNuExistaMediciDisponibiliPeSediul,
    required this.textMediciDisponibiliHomeScreen,
    required this.textLocatieIndisponibilaHomeScreen,
    required this.textDataDoctoriDisponibiliHomeScreen,
    required this.textLimbaDoctoriDisponibiliHomeScreen,

    required this.textAcasaBottomBar,
    required this.textProgramariBottomBar,
    required this.textTratamenteBottomBar,
    required this.textProfilBottomBar,
    
    required this.textAcasaMeniu,
    required this.textSolicitaProgramareMeniu,
    required this.textPlanTratamentMeniu,
    required this.textTarifeMeniu,
    required this.textMediciMeniu,
    required this.textCliniciMeniu,
    required this.textOferteMeniu,
    required this.textTurismMeniu,
    required this.textContactMeniu,
    required this.textContulMeuMeniu,
    required this.textLogOutMeniu,

    required this.textInapoiCalendar,
    required this.textLunaAnCurentCalendar,
    required this.textLunaAnViitorCalendar,
    required this.textLunaAnCurentLimbaCalendar,
    required this.textLunaAnViitorLimbaCalendar,
    required this.textInainteCalendar,
    required this.textNumeZiCalendar,
    required this.textNumeZiLimbaCalendar,


    required this.textTitluTermeniSiConditii,
    required this.textMdTermeniSiConditii,
    required this.textAcordTermeniSiConditii,
    required this.textLimbaTermeniSiConditii,
    required this.textInainteTermeniSiConditii,
    
    required this.textValidateEmailLogin,
    required this.textHintParolaLogin,
    required this.textIntroducetiParolaValidateLogin,
    required this.textParolaLungimeValidateLogin,
    required this.textSediuClinicaLogin,
    required this.textAlegetiSediulLogin,
    required this.textAlegetiSediulValidateLogin,
    required this.textAsteaptaIncarcareSediuLogin,
    required this.textIntraContLogin,
    required this.textNuAvetiContLogin,
    required this.textAtiUitatParolaContLogin,
    required this.textDateLoginGresiteLogin,
    required this.textDateLoginGresiteVerificatiLogin,
    required this.textAdresaEmailInvalidaLogin,
    required this.textSuccessLogin,

    required this.textMessageLoading,
    
    required this.textTitluClinici,
    
    required this.textDespreDoctorDetaliiDoctor,
    required this.textExperientaDetaliiDoctor,
    required this.textReviewsDetaliiDoctor,
    required this.textNotaMedieReviewsDetaliiDoctor,
    required this.textVreauProgramareDetaliiDoctor,

    required this.textTitluListaDocumente,
    required this.textAAparutEroareUserListaDocumente,
    required this.textAAparutEroareCopilListaDocumente,
    required this.textDocumenteleDvsListaDocumente,
    required this.textDocumenteleDvsAreCopiiListaDocumente,
    required this.textDocumenteCopilAreCopiiListaDocumente,

    required this.textLasatiFeedback,
    required this.textHintDespreDoctorFeedback,
    required this.textTrimisFeedback,
    required this.textTrimiteFeedback,

    required this.textProfilulMeuMyAccountChangeData,
    required this.textSchimbatiDateleMyAccountChangeData,
    required this.textSolicitareSchimbatiDateleMyAccountChangeData,
    required this.textSolicitareSchimbatiDateleCerereaSeProceseaza,
    required this.textEroareServerMyAccountChangeData,
    required this.textDateGresiteMyAccountChangeData,
    required this.textEmailDejaExistentMyAccountChangeData,
    required this.textDateCorecteMyAccountChangeData,

    required this.textContulMeuMyAccount,
    required this.textMesajDateMyAccount,
    required this.textDatePersonaleMyAccount,
    required this.textConfirmaDateMyAccount,
    required this.textDescarcaDocumenteMyAccount,
    required this.textPutetiDescarcaDocumenteMyAccount,
    required this.textLasatiRecenzieMyAccount,
    required this.textExperientaGoogleMyAccount,

    
    required this.textMediciiNostriMedici,
    required this.textTotiMedici,
    
    required this.textInapoiPasswordResetPin,
    required this.textVerificaOTPPasswordResetPin,
    required this.textIntroducetiCodulPasswordResetPin,
    required this.textVerificaCodulPasswordResetPin,

    required this.textInapoiPasswordReset,
    required this.textReseteazaParolaPasswordReset,
    required this.textTrimitetiCerereaPasswordReset,
    required this.textIntroducetiEmailValidPasswordReset,
    required this.textHintParolaPasswordReset,
    required this.textIntroducetiParolaValidarePasswordReset,
    required this.textMinimCaractereValidarePasswordReset,
    required this.textEmailGresitNullPasswordReset,
    required this.textEmailGresitReturnCodePasswordReset,
    required this.textEmailCorectPasswordReset,
    
    required this.textTitluProgramari,
    required this.textProgramariDvsProgramari,
    required this.textProgramariDvsAreCopilProgramari,
    required this.textProgramariCopilAreCopilProgramari,
    required this.textProgramariFinalizateProgramari,
    required this.textProgramariViitoareProgramari,
    required this.textProgramariFinalizateCopilProgramari,
    required this.textProgramariViitoareCopilProgramari,
    required this.textDetaliiProgramareDataProgramari,
    required this.textDetaliiProgramareOraProgramari,
    required this.textDetaliiProgramareDoctorProgramari,
    required this.textDetaliiProgramareManoperaProgramari,

    required this.textStatusInCursProgramari,
    required this.textStatusProgramatProgramari,
    required this.textStatusTerminatProgramari,
    required this.textStatusAnulatProgramari,
    required this.textStatusAnulatDeMedicProgramari,
    required this.textStatusAnulatTelefonicDePacientProgramari,
    required this.textStatusIntarzaiereLaboratorProgramari,
    required this.textStatusConfirmatProgramari,
    required this.textStatusSositProgramari,
    required this.textStatusDeReconfirmatProgramari,
    required this.textStatusCatMaiCurandProgramari,
    required this.textStatusUrgentaProgramari,
    required this.textStatusReprogramatProgramari,
    required this.textStatusFinalizatProgramari,

    required this.textTitluPromotiiLunare,
    required this.urlPromotii,

    required this.textTitluRecenzii,

    required this.textTitluTarife,
    required this.urlTarife,

    required this.textTitluTurism,
    required this.urlTurism,

    required this.textInregistreazaRegister,
    required this.textAvetiContRegister,
    required this.textConectatiRegister,
    required this.textIntroducetiPrenumeValidareRegister,
    required this.textHintPrenumeRegister,
    required this.textIntroducetiNumeValidareRegister,
    required this.textHintNumeRegister,
    required this.textHintDataNastereRegister,
    required this.textDataNastereValidareRegister,
    required this.textIntroducetiEmailValidareRegister,
    required this.textHintNumarTelefonRegister,
    required this.textIntroducetiNumarTelefonValidareRegister,
    required this.textHintParolaRegister,
    required this.textIntroducetiParolaValidareRegister,
    required this.textMesajMinimCaractereParolaValidareRegister,
    required this.textHintConfirmaParolaRegister,
    required this.textIntroducetiConfirmaParolaValidareRegister,
    required this.textPotrivireParoleConfirmaParolaValidareRegister,
    required this.textMesajSuccessfullRegister,
    required this.textMesajDateGresiteRegister,
    required this.textMesajPacientDejaExistentRegister,

    required this.textTitluSolicitaProgramareDoctor,
    required this.textHintIntroducetiDetaliiSolicitaProgramareDoctor,
    required this.textNotaSolicitaProgramareDoctor,
    required this.textProgramareaSeAdaugaSolicitaProgramareDoctor,
    required this.textCerereTrimisaCuSuccesSolicitaProgramareDoctor,
    required this.textProgrameazaSolicitaProgramareDoctor,
    required this.textAdaugaDetaliiSolicitaProgramareDoctor,
    required this.textSelecteazaOraSolicitaProgramareDoctor,

    required this.textTitluSolicitaProgramare,
    required this.textHintIntroducetiDetaliiSolicitaProgramare,
    required this.textNotaSolicitaProgramare,
    required this.textProgramareaSeAdaugaSolicitaProgramare,
    required this.textCerereTrimisaCuSuccesSolicitaProgramare,
    required this.textProgrameazaSolicitaProgramare,
    required this.textAdaugaDetaliiSolicitaProgramare,
    required this.textSelecteazaOraSolicitaProgramare,
    
    required this.textFormatDataTratamenteItem,
    required this.textFormatDataLimbaTratamenteItem,
    
    required this.textTitluTratamente,
    required this.textEroareTratamente,
    required this.textSnapshotHasEroareTratamente,
    required this.textEroareCopilTratamente,
    required this.textSnapshotHasEroareCopilTratamente,
    required this.textInteventiileDvsTratamente,
    required this.textTratamenteleDvsTratamente,
    required this.textTratamenteCopilTratamente,
    required this.textTratamenteFinalizateUserTratamente,
    required this.textTratamenteViitoareUserTratamente,
    required this.textTratamenteFinalizateCopilTratamente,
    required this.textTratamenteViitoareCopilTratamente,


  });

  /// Home Screen

  final String textLimba;

  /// label pentru textul Acasa de pe ecranul Home Screen.
  final String textAcasaHomeScreen;

  /// label pentru textul Echipa de pe ecranul Home Screen
  final String textEchipaHomeScreen;

  /// label pentru textul Nu sunt medici alocați sediului
  final String textNuSuntMediciAlocatiSediului;

  /// label pentru textul Nu sunt există medici disponibili pe sediul
  final String textNuExistaMediciDisponibiliPeSediul;

  /// label pentru textul Medici Disponibili de pe ecranul Home Screen
  final String textMediciDisponibiliHomeScreen;

  final String textLocatieIndisponibilaHomeScreen;

  final String textDataDoctoriDisponibiliHomeScreen;

  final String textLimbaDoctoriDisponibiliHomeScreen;

  /// Bottom Bar

  /// label pentru textul Acasă de pe Bottom Bar
  final String textAcasaBottomBar;

  /// label pentru textul Programări de pe Bottom Bar
  final String textProgramariBottomBar;

  /// label pentru textul Tratamente de pe Bottom Bar
  final String textTratamenteBottomBar;
  
  /// label pentru textul Tratamente de pe Bottom Bar
  final String textProfilBottomBar;

  /// meniu stânga
  
  final String textAcasaMeniu;
  final String textSolicitaProgramareMeniu;
  final String textPlanTratamentMeniu;
  final String textTarifeMeniu;
  final String textMediciMeniu;
  final String textCliniciMeniu;
  final String textOferteMeniu;
  final String textTurismMeniu;
  final String textContactMeniu;
  final String textContulMeuMeniu;
  final String textLogOutMeniu;

  //pagină Solicită o programare

  final String textInapoiCalendar;
  final String textLunaAnCurentCalendar;
  final String textLunaAnViitorCalendar;
  final String textLunaAnCurentLimbaCalendar;
  final String textLunaAnViitorLimbaCalendar;
  final String textInainteCalendar;
  final String textNumeZiCalendar;
  final String textNumeZiLimbaCalendar;

  final String textTitluTermeniSiConditii;
  final String textMdTermeniSiConditii;
  final String textAcordTermeniSiConditii;
  final String textLimbaTermeniSiConditii;
  final String textInainteTermeniSiConditii;

  final String textValidateEmailLogin;
  final String textHintParolaLogin;
  final String textIntroducetiParolaValidateLogin;
  final String textParolaLungimeValidateLogin;
  final String textSediuClinicaLogin;
  final String textAlegetiSediulLogin;
  final String textAlegetiSediulValidateLogin;
  final String textAsteaptaIncarcareSediuLogin;
  final String textIntraContLogin;
  final String textNuAvetiContLogin;
  final String textAtiUitatParolaContLogin;
  final String textDateLoginGresiteLogin;
  final String textDateLoginGresiteVerificatiLogin;
  final String textAdresaEmailInvalidaLogin;
  final String textSuccessLogin;

  final String textMessageLoading;

  final String textTitluClinici;

  final String textDespreDoctorDetaliiDoctor;
  final String textExperientaDetaliiDoctor;
  final String textReviewsDetaliiDoctor;
  final String textNotaMedieReviewsDetaliiDoctor;
  final String textVreauProgramareDetaliiDoctor;

  final String textTitluListaDocumente;
  final String textAAparutEroareUserListaDocumente;
  final String textAAparutEroareCopilListaDocumente;
  final String textDocumenteleDvsListaDocumente;
  final String textDocumenteleDvsAreCopiiListaDocumente;
  final String textDocumenteCopilAreCopiiListaDocumente;

  final String textLasatiFeedback;
  final String textHintDespreDoctorFeedback;
  final String textTrimisFeedback;
  final String textTrimiteFeedback;

  final String textProfilulMeuMyAccountChangeData;
  final String textSchimbatiDateleMyAccountChangeData;
  final String textSolicitareSchimbatiDateleMyAccountChangeData;
  final String textSolicitareSchimbatiDateleCerereaSeProceseaza;
  final String textEroareServerMyAccountChangeData;
  final String textDateGresiteMyAccountChangeData;
  final String textEmailDejaExistentMyAccountChangeData;
  final String textDateCorecteMyAccountChangeData;

  final String textContulMeuMyAccount;
  final String textMesajDateMyAccount;
  final String textDatePersonaleMyAccount;
  final String textConfirmaDateMyAccount;
  final String textDescarcaDocumenteMyAccount;
  final String textPutetiDescarcaDocumenteMyAccount;
  final String textLasatiRecenzieMyAccount;
  final String textExperientaGoogleMyAccount;

  final String textMediciiNostriMedici;
  final String textTotiMedici;

  final String textInapoiPasswordResetPin;
  final String textVerificaOTPPasswordResetPin;
  final String textIntroducetiCodulPasswordResetPin;
  final String textVerificaCodulPasswordResetPin;

  final String textInapoiPasswordReset;
  final String textReseteazaParolaPasswordReset;
  final String textTrimitetiCerereaPasswordReset;
  final String textIntroducetiEmailValidPasswordReset;
  final String textHintParolaPasswordReset;
  final String textIntroducetiParolaValidarePasswordReset;
  final String textMinimCaractereValidarePasswordReset;
  final String textEmailGresitNullPasswordReset;
  final String textEmailGresitReturnCodePasswordReset;
  final String textEmailCorectPasswordReset;

  final String textTitluProgramari;
  final String textProgramariDvsProgramari;
  final String textProgramariDvsAreCopilProgramari;
  final String textProgramariCopilAreCopilProgramari;
  final String textProgramariFinalizateProgramari;
  final String textProgramariViitoareProgramari;
  final String textProgramariFinalizateCopilProgramari;
  final String textProgramariViitoareCopilProgramari;
  final String textDetaliiProgramareDataProgramari;
  final String textDetaliiProgramareOraProgramari;
  final String textDetaliiProgramareDoctorProgramari;
  final String textDetaliiProgramareManoperaProgramari;

  final String textStatusInCursProgramari;
  final String textStatusProgramatProgramari;
  final String textStatusTerminatProgramari;
  final String textStatusAnulatProgramari;
  final String textStatusAnulatDeMedicProgramari;
  final String textStatusAnulatTelefonicDePacientProgramari;
  final String textStatusIntarzaiereLaboratorProgramari;
  final String textStatusConfirmatProgramari;
  final String textStatusSositProgramari;
  final String textStatusDeReconfirmatProgramari;
  final String textStatusCatMaiCurandProgramari;
  final String textStatusUrgentaProgramari;
  final String textStatusReprogramatProgramari;
  final String textStatusFinalizatProgramari;

  final String textTitluPromotiiLunare;
  final String urlPromotii;

  final String textTitluRecenzii;

  final String textTitluTarife;
  final String urlTarife;

  final String textTitluTurism;
  final String urlTurism;

  final String textInregistreazaRegister;
  final String textAvetiContRegister;
  final String textConectatiRegister;
  final String textIntroducetiPrenumeValidareRegister;
  final String textHintPrenumeRegister;
  final String textIntroducetiNumeValidareRegister;
  final String textHintNumeRegister;
  final String textHintDataNastereRegister;
  final String textDataNastereValidareRegister;
  final String textIntroducetiEmailValidareRegister;
  final String textHintNumarTelefonRegister;
  final String textIntroducetiNumarTelefonValidareRegister;
  final String textHintParolaRegister;
  final String textMesajMinimCaractereParolaValidareRegister;
  final String textIntroducetiParolaValidareRegister;
  final String textHintConfirmaParolaRegister;
  final String textIntroducetiConfirmaParolaValidareRegister;
  final String textPotrivireParoleConfirmaParolaValidareRegister;
  final String textMesajSuccessfullRegister;
  final String textMesajDateGresiteRegister;
  final String textMesajPacientDejaExistentRegister;

  final String textTitluSolicitaProgramareDoctor;
  final String textHintIntroducetiDetaliiSolicitaProgramareDoctor;
  final String textNotaSolicitaProgramareDoctor;
  final String textProgramareaSeAdaugaSolicitaProgramareDoctor;
  final String textCerereTrimisaCuSuccesSolicitaProgramareDoctor;
  final String textProgrameazaSolicitaProgramareDoctor;
  final String textAdaugaDetaliiSolicitaProgramareDoctor;
  final String textSelecteazaOraSolicitaProgramareDoctor;

  final String textTitluSolicitaProgramare;
  final String textHintIntroducetiDetaliiSolicitaProgramare;
  final String textNotaSolicitaProgramare;
  final String textProgramareaSeAdaugaSolicitaProgramare;
  final String textCerereTrimisaCuSuccesSolicitaProgramare;
  final String textProgrameazaSolicitaProgramare;
  final String textAdaugaDetaliiSolicitaProgramare;
  final String textSelecteazaOraSolicitaProgramare;

  final String textFormatDataTratamenteItem;
  final String textFormatDataLimbaTratamenteItem;

  final String textTitluTratamente;
  final String textEroareTratamente;
  final String textSnapshotHasEroareTratamente;
  final String textEroareCopilTratamente;
  final String textSnapshotHasEroareCopilTratamente;
  final String textInteventiileDvsTratamente;
  final String textTratamenteleDvsTratamente;
  final String textTratamenteCopilTratamente;
  final String textTratamenteFinalizateUserTratamente;
  final String textTratamenteViitoareUserTratamente;
  final String textTratamenteFinalizateCopilTratamente;
  final String textTratamenteViitoareCopilTratamente;

}


/// English l10n which extends [ChatL10n].
@immutable
class LanguageRO extends GenericLanguage {
  /// Creates English l10n. Use this constructor if you want to
  /// override only a couple of properties, otherwise create a new class
  /// which extends [ChatL10n].
  const LanguageRO({
    
    super.textLimba = 'ro',

    super.textAcasaHomeScreen = 'Acasă',
    super.textEchipaHomeScreen = 'Echipa noastră',
    super.textNuSuntMediciAlocatiSediului = 'Nu sunt medici alocați sediului ',
    super.textNuExistaMediciDisponibiliPeSediul = 'Nu există medici disponibili pe sediul ',
    super.textMediciDisponibiliHomeScreen = 'Medici disponibili',
    super.textLocatieIndisponibilaHomeScreen = 'Locație indisponibilă',
    super.textDataDoctoriDisponibiliHomeScreen = 'EEEE, d.M.yyyy',
    super.textLimbaDoctoriDisponibiliHomeScreen = 'ro',

    super.textAcasaBottomBar = 'Acasă',
    super.textProgramariBottomBar = 'Programări',
    super.textTratamenteBottomBar = 'Tratamente',
    super.textProfilBottomBar = 'Profil',
    
    super.textAcasaMeniu = 'Acasă',
    super.textSolicitaProgramareMeniu = 'Solicită o programare',
    super.textPlanTratamentMeniu = 'Planul de tratament',
    super.textTarifeMeniu = 'Tarife',
    super.textMediciMeniu = 'Medici',
    super.textCliniciMeniu = 'Clinicile Unident',
    super.textOferteMeniu = 'Oferte',
    super.textTurismMeniu = 'Turism dentar',
    super.textContactMeniu = 'Contact',
    super.textContulMeuMeniu = 'Contul meu',
    super.textLogOutMeniu = 'Log out',
    
    super.textInapoiCalendar = 'Înapoi',
    super.textLunaAnCurentCalendar = 'MMMM, yyyy',
    super.textLunaAnViitorCalendar = 'MMMM yyyy',
    super.textLunaAnCurentLimbaCalendar = 'ro',
    super.textLunaAnViitorLimbaCalendar = 'ro',
    super.textInainteCalendar = 'Înainte',
    super.textNumeZiCalendar = 'EEE',
    super.textNumeZiLimbaCalendar = 'RO',

    super.textTitluTermeniSiConditii = 'Termeni și Condiții',
    super.textMdTermeniSiConditii = 'terms_and_conditions.md',
    super.textAcordTermeniSiConditii = 'Sunt de acord cu termenii și condițiile propuse de aplicația MyUnident',
    super.textLimbaTermeniSiConditii = 'Alegeți limba',
    super.textInainteTermeniSiConditii = 'ÎNAINTE',

    super.textValidateEmailLogin = 'Introduceți o adresă de Email validă',
    super.textHintParolaLogin = 'Parolă',
    super.textIntroducetiParolaValidateLogin = 'Introduceți o parolă',
    super.textParolaLungimeValidateLogin = 'Parola trebuie sa conțină minim 6 caractere',
    super.textSediuClinicaLogin = 'Sediul clinicii Unident ',
    super.textAlegetiSediulLogin = 'Alegeți sediul',
    super.textAlegetiSediulValidateLogin = 'Selectati sediul',
    super.textAsteaptaIncarcareSediuLogin = 'Se încarcă sediile...',
    super.textIntraContLogin = 'Intră în cont',
    super.textNuAvetiContLogin = 'Nu aveți deja cont?',
    super.textAtiUitatParolaContLogin = 'Ați uitat parola?',
    super.textDateLoginGresiteLogin = 'Date de login greșite!',
    super.textDateLoginGresiteVerificatiLogin = 'Date greșite, verificați cu atenție datele introduse și încercați încă o dată!',
    super.textAdresaEmailInvalidaLogin = 'Adresa de e-mail introdusă este invalidă!',
    super.textSuccessLogin = 'Login încheiat cu succes!',

    //super.textMessageLoading = 'Soluții inovative de tratament', //old George Valentin Iordache română

    super.textMessageLoading = 'Innovative treatment solutions for you', //old George Valentin Iordache română

    

    super.textTitluClinici = 'Clinicile Unident',

    super.textDespreDoctorDetaliiDoctor = 'Despre doctor',
    super.textExperientaDetaliiDoctor = 'Experiență',
    super.textReviewsDetaliiDoctor = 'Review-uri',
    super.textNotaMedieReviewsDetaliiDoctor = 'Medie review-uri',
    super.textVreauProgramareDetaliiDoctor = 'VREAU O PROGRAMARE',
    
    super.textTitluListaDocumente = 'Documente',
    super.textAAparutEroareUserListaDocumente = 'A apărut o eroare!',
    super.textAAparutEroareCopilListaDocumente = 'A apărut o eroare!',
    super.textDocumenteleDvsListaDocumente = 'Documentele dvs.',
    super.textDocumenteleDvsAreCopiiListaDocumente = 'Documentele dvs.',
    super.textDocumenteCopilAreCopiiListaDocumente = 'Documentele copilului',

    super.textLasatiFeedback = 'Vă rugăm să ne lăsați și un feedback!',
    super.textHintDespreDoctorFeedback = 'Doctorul a fost amabil...',
    super.textTrimisFeedback = 'Feedback-ul a fost trimis, vă mulțumim!',
    super.textTrimiteFeedback = 'Trimiteți feedack',

    super.textProfilulMeuMyAccountChangeData = 'Profilul meu',
    super.textSchimbatiDateleMyAccountChangeData = 'Schimbați datele',
    
    super.textSolicitareSchimbatiDateleMyAccountChangeData = 'S-a trimis solicitarea de schimbare a datelor',
    super.textSolicitareSchimbatiDateleCerereaSeProceseaza = 'Cererea se procesează!',
    super.textEroareServerMyAccountChangeData = 'Eroare server!',
    super.textDateGresiteMyAccountChangeData = 'Date greșite, verificați cu atenție datele introduse și încercați încă o dată!',
    super.textEmailDejaExistentMyAccountChangeData = 'Pacient cu email deja existent!',
    super.textDateCorecteMyAccountChangeData = 'Date corecte, cererea a fost trimisă!',

    super.textContulMeuMyAccount = 'Contul meu',
    super.textMesajDateMyAccount = 'Aici puteți găsi și modifica datele dumneavoastră personale, la fel puteți urmări planul de tratament și adăuga rezultatele analizelor medicale',
    super.textDatePersonaleMyAccount = 'Datele personale',
    super.textConfirmaDateMyAccount = 'Ne ajută să confirmăm datele dvs. personale',
    super.textDescarcaDocumenteMyAccount = 'Descărcați documentele dvs.',
    super.textPutetiDescarcaDocumenteMyAccount = 'Puteți descărca cele mai recente documente medicale (radiografii, CT, plan de tratament, etc.)',
    super.textLasatiRecenzieMyAccount = 'Lăsați-ne o recenzie',
    super.textExperientaGoogleMyAccount = 'Puteți împărtăși experiența dvs. în Clinicile Unident printr-o recenzie pe Google',

    super.textMediciiNostriMedici = 'Medicii noștri',
    super.textTotiMedici = 'Toți medicii din ',

    super.textInapoiPasswordResetPin = 'Înapoi',
    super.textVerificaOTPPasswordResetPin = 'Verifică OTP',
    super.textIntroducetiCodulPasswordResetPin = 'Introduceți codul de 4 cifre trimis la:\n',
    super.textVerificaCodulPasswordResetPin = 'Verifică codul',
    
    super.textInapoiPasswordReset = 'Înapoi',
    super.textReseteazaParolaPasswordReset = 'Resetează parola!',
    super.textTrimitetiCerereaPasswordReset = 'Trimiteți cererea de resetare',
    super.textIntroducetiEmailValidPasswordReset = 'Introduceți un e-mail valid',
    super.textHintParolaPasswordReset = 'Parolă',
    super.textIntroducetiParolaValidarePasswordReset = 'Introduceți o parolă',
    super.textMinimCaractereValidarePasswordReset = 'Parola trebuie să conțină minim 6 caractere',
    super.textEmailGresitNullPasswordReset = 'E-mail greșit!',
    super.textEmailGresitReturnCodePasswordReset = 'E-mail greșit!',
    super.textEmailCorectPasswordReset = 'E-mail corect - cerere trimisă!',

    super.textTitluProgramari = 'Programări',
    super.textProgramariDvsProgramari = 'Programările dvs.',
    super.textProgramariDvsAreCopilProgramari = 'Programările dvs.',
    super.textProgramariCopilAreCopilProgramari = 'Programările copilului',
    super.textProgramariFinalizateProgramari = 'Programări finalizate',
    super.textProgramariViitoareProgramari = 'Programări viitoare',
    super.textProgramariFinalizateCopilProgramari = 'Programări finalizate',
    super.textProgramariViitoareCopilProgramari = 'Programări viitoare',
    super.textDetaliiProgramareDataProgramari = 'Data',
    super.textDetaliiProgramareOraProgramari = 'Ora',
    super.textDetaliiProgramareDoctorProgramari = 'Doctor',
    super.textDetaliiProgramareManoperaProgramari = 'Manopera',

    super.textStatusInCursProgramari = 'În curs',
    super.textStatusProgramatProgramari = 'Programat',
    super.textStatusTerminatProgramari = 'Terminat',
    super.textStatusAnulatProgramari = 'Anulat',
    super.textStatusAnulatDeMedicProgramari = 'Anulat de medic',
    super.textStatusAnulatTelefonicDePacientProgramari = 'Anulat telefonic de pacient',
    super.textStatusIntarzaiereLaboratorProgramari = 'Întârziere laborator',
    super.textStatusConfirmatProgramari = 'Confirmat',
    super.textStatusSositProgramari = 'Sosit',
    super.textStatusDeReconfirmatProgramari = 'De reconfirmat',
    super.textStatusCatMaiCurandProgramari = 'Cât mai curând',
    super.textStatusUrgentaProgramari = 'Urgență',
    super.textStatusReprogramatProgramari = 'Reprogramat',
    super.textStatusFinalizatProgramari = 'Finalizat',

    super.textTitluPromotiiLunare = 'Oferte',
    super.urlPromotii = 'https://unident.ro/pachete/',

    super.textTitluRecenzii = 'Recenzii',

    super.textTitluTarife = 'Tarife',
    super.urlTarife = 'https://unident.ro/onorarii/',

    super.textTitluTurism = 'Turism dentar',
    super.urlTurism = 'https://unident.ro/turism-dentar-in-romania/',

    super.textInregistreazaRegister = 'Înregistrează-mă',
    super.textAvetiContRegister = 'Aveți deja un cont? ',
    super.textConectatiRegister = 'Conectați-vă aici!',
    super.textIntroducetiPrenumeValidareRegister = 'Introduceți un prenume valid',
    super.textHintPrenumeRegister = 'Prenume',
    super.textIntroducetiNumeValidareRegister = 'Introduceți un nume valid',
    super.textHintNumeRegister = 'Nume',
    super.textHintDataNastereRegister = 'Data de naștere',
    super.textDataNastereValidareRegister = 'Alegeți o dată de naștere!',
    super.textIntroducetiEmailValidareRegister = 'Introduceți un e-mail valid',
    super.textHintNumarTelefonRegister = 'Număr de telefon',
    super.textIntroducetiNumarTelefonValidareRegister = 'Introduceți un număr de telefon valid',
    super.textHintParolaRegister = 'Parolă',
    super.textIntroducetiParolaValidareRegister = 'Introduceți o parolă',
    super.textMesajMinimCaractereParolaValidareRegister = 'Parola trebuie sa conțină minim 6 caractere',
    super.textHintConfirmaParolaRegister = 'Confirmă parola',
    super.textIntroducetiConfirmaParolaValidareRegister = 'Introduceți o parolă',
    super.textPotrivireParoleConfirmaParolaValidareRegister = 'Parolele nu se potrivesc!',
    super.textMesajSuccessfullRegister = 'Register încheiat cu succes!',
    super.textMesajDateGresiteRegister = 'Date greșite, verificați cu atenție datele introduse și încercați încă o dată!',
    super.textMesajPacientDejaExistentRegister = 'Un pacient cu datele introduse este deja înregistrat!',

    super.textTitluSolicitaProgramareDoctor = 'Solicită o programare',
    super.textHintIntroducetiDetaliiSolicitaProgramareDoctor = 'Introduceți câteva detalii despre problema dvs.',
    super.textNotaSolicitaProgramareDoctor = 'Notă: Echipa noastră vă propune să alegeți o zi și o oră pentru programare la o consultație ca ulterior să puteți prelua legătura cu o colegă care să vă confirme dacă alegerea dvs. este posibilă sau să vă poată propune o dată alternativă',
    super.textProgramareaSeAdaugaSolicitaProgramareDoctor = 'Programarea se adaugă...',
    super.textCerereTrimisaCuSuccesSolicitaProgramareDoctor = 'Cerere trimisă cu succes!',
    super.textProgrameazaSolicitaProgramareDoctor = 'Programează-mă',
    super.textAdaugaDetaliiSolicitaProgramareDoctor = 'Adăugați câteva detalii!',
    super.textSelecteazaOraSolicitaProgramareDoctor = 'Selectați o oră!',
    
    super.textTitluSolicitaProgramare = 'Solicită o programare',
    super.textHintIntroducetiDetaliiSolicitaProgramare = 'Introduceți câteva detalii despre problema dvs.',
    super.textNotaSolicitaProgramare = 'Notă: Echipa noastră vă propune să alegeți o zi și o oră pentru programare la o consultație ca ulterior să puteți prelua legătura cu o colegă care să vă confirme dacă alegerea dvs. este posibilă sau să vă poată propune o dată alternativă',
    super.textProgramareaSeAdaugaSolicitaProgramare = 'Programarea se adaugă...',
    super.textCerereTrimisaCuSuccesSolicitaProgramare = 'Cerere trimisă cu succes!',
    super.textProgrameazaSolicitaProgramare = 'Programează-mă',
    super.textAdaugaDetaliiSolicitaProgramare = 'Adăugați câteva detalii!',
    super.textSelecteazaOraSolicitaProgramare = 'Selectați o oră!',

    super.textFormatDataTratamenteItem = 'yMd',
    super.textFormatDataLimbaTratamenteItem = 'ro',

    super.textTitluTratamente = 'Planul de tratament',
    super.textEroareTratamente = 'Eroare',
    super.textSnapshotHasEroareTratamente = 'Eroare',
    super.textEroareCopilTratamente = 'Eroare',
    super.textSnapshotHasEroareCopilTratamente = 'Eroare',
    super.textInteventiileDvsTratamente = 'Intervențiile dvs.',
    super.textTratamenteleDvsTratamente = 'Tratamentele dvs.',
    super.textTratamenteCopilTratamente = 'Tratamentele copilului',
    super.textTratamenteFinalizateUserTratamente = 'Tratamentele finalizate',
    super.textTratamenteViitoareUserTratamente = 'Tratamentele viitoare',
    super.textTratamenteFinalizateCopilTratamente = 'Tratamentele finalizate',
    super.textTratamenteViitoareCopilTratamente = 'Tratamentele viitoare',

  });
}


/// English l10n which extends [ChatL10n].
@immutable
class LanguageEN extends GenericLanguage {
  /// Creates LanguageEN. Use this constructor if you want to
  /// override only a couple of properties, otherwise create a new class
  /// which extends GenericLanguage.
  const LanguageEN({
    
    super.textLimba = 'en',

    super.textAcasaHomeScreen = 'Home',
    super.textEchipaHomeScreen = 'Our team',
    
    super.textNuSuntMediciAlocatiSediului = 'There are no doctors assigned to the premises ',
    super.textNuExistaMediciDisponibiliPeSediul = 'There are no doctors available on site ',

    super.textMediciDisponibiliHomeScreen = 'Available doctors',
    super.textLocatieIndisponibilaHomeScreen = 'Location not available',
    super.textDataDoctoriDisponibiliHomeScreen = 'EEEE, d.M.yyyy',
    super.textLimbaDoctoriDisponibiliHomeScreen = 'en',

    super.textAcasaBottomBar = 'Home',
    super.textProgramariBottomBar = 'Appointments',
    super.textTratamenteBottomBar = 'Treatments',
    super.textProfilBottomBar = 'Profile',
    
    super.textAcasaMeniu = 'Home',
    super.textSolicitaProgramareMeniu = 'Request an appointment',
    super.textPlanTratamentMeniu = 'Treatment plan',
    super.textTarifeMeniu = 'Rates',
    super.textMediciMeniu = 'Doctors',
    super.textCliniciMeniu = 'Unident clinics',
    super.textOferteMeniu = 'Offers',
    super.textTurismMeniu = 'Dental tourism',
    super.textContactMeniu = 'Contact',
    super.textContulMeuMeniu = 'My account',
    super.textLogOutMeniu = 'Log out',
    
    super.textInapoiCalendar = 'Back',
    super.textLunaAnCurentCalendar = 'MMMM, yyyy',
    super.textLunaAnViitorCalendar = 'MMMM yyyy',
    super.textLunaAnCurentLimbaCalendar = 'en',
    super.textLunaAnViitorLimbaCalendar = 'en',
    super.textInainteCalendar = 'Forward',
    super.textNumeZiCalendar = 'EEE',
    super.textNumeZiLimbaCalendar = 'EN',

    super.textTitluTermeniSiConditii = 'Terms and conditions',
    super.textMdTermeniSiConditii = 'terms_and_conditions_en.md',
    super.textAcordTermeniSiConditii = 'I agree with the terms and conditions proposed by the MyUnident application',
    super.textLimbaTermeniSiConditii = 'Choose the language',
    super.textInainteTermeniSiConditii = 'FORWARD',
    
    super.textValidateEmailLogin = 'Enter a valid Email address',
    super.textHintParolaLogin = 'Password',
    super.textIntroducetiParolaValidateLogin = 'Enter a password',
    super.textParolaLungimeValidateLogin = 'The password must have at least 6 characters',
    super.textSediuClinicaLogin = 'Unident clinic location',
    super.textAlegetiSediulLogin = 'Choose location',
    super.textAlegetiSediulValidateLogin = 'Choose a location',
    super.textAsteaptaIncarcareSediuLogin = 'The locations are loading...',
    super.textIntraContLogin = 'Log in',
    super.textNuAvetiContLogin = 'Don\'t have an account?',
    super.textAtiUitatParolaContLogin = 'Forgot your password?',
    super.textDateLoginGresiteLogin = 'Wrong login data!',
    super.textDateLoginGresiteVerificatiLogin = 'Wrong data, please verify again the data entered and try again!',
    super.textAdresaEmailInvalidaLogin = 'The e-mail address entered is invalid!',
    super.textSuccessLogin = 'Login completed successfully!',
    
    super.textMessageLoading = 'Innovative treatment solutions for you',
    
    super.textTitluClinici = 'Unident clinics',

    super.textDespreDoctorDetaliiDoctor = 'About the doctor',
    super.textExperientaDetaliiDoctor = 'Experience',
    super.textReviewsDetaliiDoctor = 'Reviews',
    super.textNotaMedieReviewsDetaliiDoctor = 'Average reviews',
    super.textVreauProgramareDetaliiDoctor = 'I WANT AN APPOINTMENT',

    super.textTitluListaDocumente = 'Documents',
    super.textAAparutEroareUserListaDocumente = 'An error occurred!',
    super.textAAparutEroareCopilListaDocumente = 'An error occurred!',
    super.textDocumenteleDvsListaDocumente = 'Your documents',
    super.textDocumenteleDvsAreCopiiListaDocumente = 'Your documents',
    super.textDocumenteCopilAreCopiiListaDocumente = 'Child\'s documents',

    super.textLasatiFeedback = 'Please also leave us feedback!',
    super.textHintDespreDoctorFeedback = 'The doctor was kind...',
    super.textTrimisFeedback = 'The feedback was sent, thank you!',
    super.textTrimiteFeedback = 'Send feedack',
    
    super.textProfilulMeuMyAccountChangeData = 'My profile',
    super.textSchimbatiDateleMyAccountChangeData = 'Change the data',
    super.textSolicitareSchimbatiDateleMyAccountChangeData = 'The request to change the data has been sent!',
    super.textSolicitareSchimbatiDateleCerereaSeProceseaza = 'The request is processed!',
    super.textEroareServerMyAccountChangeData = 'Server error!',
    super.textDateGresiteMyAccountChangeData = 'Wrong data, check the entered data carefully and try again!',
    super.textEmailDejaExistentMyAccountChangeData = 'Already exists a pacient with this email!',
    super.textDateCorecteMyAccountChangeData = 'Correct data, request has been sent!',

    super.textContulMeuMyAccount = 'My account',
    super.textMesajDateMyAccount = 'Here you can find and modify your personal data, as well as follow the treatment plan and add the results of medical tests',
    super.textDatePersonaleMyAccount = 'Personal data',
    super.textConfirmaDateMyAccount = 'It helps us to confirm your personal data',
    super.textDescarcaDocumenteMyAccount = 'Download your documents',
    super.textPutetiDescarcaDocumenteMyAccount = 'You can download the latest medical documents (X-rays, CT, treatment plan, etc.)',
    super.textLasatiRecenzieMyAccount = 'Leave us a review',
    super.textExperientaGoogleMyAccount = 'You can share your experience in Unident Clinics with a review on Google',

    super.textMediciiNostriMedici = 'Our doctors',
    super.textTotiMedici = 'All doctors from ',

    super.textInapoiPasswordResetPin = 'Back',
    super.textVerificaOTPPasswordResetPin = 'Verify the OTP',
    super.textIntroducetiCodulPasswordResetPin = 'Enter the 4-digit code sent to:\n',
    super.textVerificaCodulPasswordResetPin = 'Check the code',

    super.textInapoiPasswordReset = 'Back',
    super.textReseteazaParolaPasswordReset = 'Reset password!',
    super.textTrimitetiCerereaPasswordReset = 'Submit the reset request',
    super.textIntroducetiEmailValidPasswordReset = 'Enter a valid email',
    super.textHintParolaPasswordReset = 'Password',
    super.textIntroducetiParolaValidarePasswordReset = 'Enter a password',
    super.textMinimCaractereValidarePasswordReset = 'Password must contain at least 6 characters',
    super.textEmailGresitNullPasswordReset = 'Wrong e-mail!',
    super.textEmailGresitReturnCodePasswordReset = 'Wrong e-mail!',
    super.textEmailCorectPasswordReset = 'Correct email - request sent!',

    super.textTitluProgramari = 'Appointments',
    super.textProgramariDvsProgramari = 'Your appointments',
    super.textProgramariDvsAreCopilProgramari = 'Your appointments',
    super.textProgramariCopilAreCopilProgramari = 'Child\'s appointments',
    super.textProgramariFinalizateProgramari = 'Appointments completed',
    super.textProgramariViitoareProgramari = 'Future appointments',
    super.textProgramariFinalizateCopilProgramari = 'Appointments completed',
    super.textProgramariViitoareCopilProgramari = 'Future appointments',
    super.textDetaliiProgramareDataProgramari = 'Date',
    super.textDetaliiProgramareOraProgramari = 'Hour',
    super.textDetaliiProgramareDoctorProgramari = 'Doctor',
    super.textDetaliiProgramareManoperaProgramari = 'Medical work',

    super.textStatusInCursProgramari = 'In progress',
    super.textStatusProgramatProgramari = 'Scheduled',
    super.textStatusTerminatProgramari = 'Ended',
    super.textStatusAnulatProgramari = 'Canceled',
    super.textStatusAnulatDeMedicProgramari = 'Canceled by the doctor',
    super.textStatusAnulatTelefonicDePacientProgramari = 'The patient called to cancel',
    super.textStatusIntarzaiereLaboratorProgramari = 'Dental lab delay',
    super.textStatusConfirmatProgramari = 'Confirmed',
    super.textStatusSositProgramari = 'Arrived',
    super.textStatusDeReconfirmatProgramari = 'To reconfirm',
    super.textStatusCatMaiCurandProgramari = 'ASAP',
    super.textStatusUrgentaProgramari = 'Urgent',
    super.textStatusReprogramatProgramari = 'Rescheduled',
    super.textStatusFinalizatProgramari = 'Completed',


    super.textTitluPromotiiLunare = 'Offers',
    super.urlPromotii = 'https://unident.ro/en/pachete/',

    super.textTitluRecenzii = 'Reviews',

    super.textTitluTarife = 'Rates',
    super.urlTarife = 'https://unident.ro/en/onorarii/',

    super.textTitluTurism = 'Dental tourism',
    super.urlTurism = 'https://unident.ro/en/turism-dentar-in-romania/',

    super.textInregistreazaRegister = 'Sign me in',
    super.textAvetiContRegister = 'Already have an account? ',
    super.textConectatiRegister = 'Log in here!',
    super.textIntroducetiPrenumeValidareRegister = 'Please enter a valid first name',
    super.textHintPrenumeRegister = 'First name',
    super.textIntroducetiNumeValidareRegister = 'Please enter a valid last name',
    super.textHintNumeRegister = 'Last name',
    super.textHintDataNastereRegister = 'Date of birth',
    super.textDataNastereValidareRegister = 'Choose a birthday!',
    super.textIntroducetiEmailValidareRegister = 'Please enter a valid email',
    super.textHintNumarTelefonRegister = 'Phone number',
    super.textIntroducetiNumarTelefonValidareRegister = 'Please enter a valid phone number',
    super.textHintParolaRegister = 'Password',
    super.textIntroducetiParolaValidareRegister = 'Enter a password',
    super.textMesajMinimCaractereParolaValidareRegister = 'Password must have at least 6 characters',
    super.textHintConfirmaParolaRegister = 'Confirm your password',
    super.textIntroducetiConfirmaParolaValidareRegister = 'Enter a password',
    super.textPotrivireParoleConfirmaParolaValidareRegister = 'Passwords do not match!',
    super.textMesajSuccessfullRegister = 'Registration completed successfully!',
    super.textMesajDateGresiteRegister = 'Wrong data, check the entered data carefully and try again!',
    super.textMesajPacientDejaExistentRegister = 'A patient with the entered data is already registered!',

    super.textTitluSolicitaProgramareDoctor = 'Request an appointment',
    super.textHintIntroducetiDetaliiSolicitaProgramareDoctor = 'Enter some details about your issue.',
    super.textNotaSolicitaProgramareDoctor = 'Note: Our team suggests that you choose a day and time for an appointment for a consultation so that later you can get in touch with a colleague who will confirm if your choice is possible or can propose an alternative date',
    super.textProgramareaSeAdaugaSolicitaProgramareDoctor = 'Appointment is being added...',
    super.textCerereTrimisaCuSuccesSolicitaProgramareDoctor = 'Request sent successfully!',
    super.textProgrameazaSolicitaProgramareDoctor = 'Schedule me',
    super.textAdaugaDetaliiSolicitaProgramareDoctor = 'Add some details!',
    super.textSelecteazaOraSolicitaProgramareDoctor = 'Select a time!',

    super.textTitluSolicitaProgramare = 'Request an appointment',
    super.textHintIntroducetiDetaliiSolicitaProgramare = 'Enter some details about your issue.',
    super.textNotaSolicitaProgramare = 'Note: Our team suggests that you choose a day and a time for an appointment for a consultation so that later you can get in touch with a colleague who will confirm if your choice is possible or can propose an alternative date',
    super.textProgramareaSeAdaugaSolicitaProgramare = 'Appointment is being added...',
    super.textCerereTrimisaCuSuccesSolicitaProgramare = 'Request sent successfully!',
    super.textProgrameazaSolicitaProgramare = 'Schedule me',
    super.textAdaugaDetaliiSolicitaProgramare = 'Add some details!',
    super.textSelecteazaOraSolicitaProgramare = 'Select a time!',

    super.textFormatDataTratamenteItem = 'yMd',
    super.textFormatDataLimbaTratamenteItem = 'en',

    super.textTitluTratamente = 'The treatment plan',
    super.textEroareTratamente = 'Error',
    super.textSnapshotHasEroareTratamente = 'Error',
    super.textEroareCopilTratamente = 'Error',
    super.textSnapshotHasEroareCopilTratamente = 'Error',
    super.textInteventiileDvsTratamente = 'Your interventions',
    super.textTratamenteleDvsTratamente = 'Your treatments',
    super.textTratamenteCopilTratamente = 'Child\'s treatments',
    super.textTratamenteFinalizateUserTratamente = 'Completed treatments',
    super.textTratamenteViitoareUserTratamente = 'Future treatments',
    super.textTratamenteFinalizateCopilTratamente = 'Completed treatments',
    super.textTratamenteViitoareCopilTratamente = 'Future treatments',

  });
}
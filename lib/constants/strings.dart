// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// String listOfDept = 'List of Department';
// String newCollOff = 'New Collector Office';
// String cityMamlatdarOff = 'City Mamlatdar Office';
// String prant1 = 'Prant-1';
// String prant2 = 'Prant-2';
// String bahumaliBhavan = 'Bahumali Bhavan';
// String corporateOff = 'Corporation Office';
// final db = FirebaseFirestore.instance;
// final firebase = FirebaseAuth.instance;
// const String complaintDataRef = 'complaints';
// List<Map<String, String>> listOfBahumaliBhavanSubOff = [
//   {'title': 'Non-Criminal', 'subtitle': ''},
//   {'title': 'Cast certificate', 'subtitle': ''},
//   {'title': 'Narmada canal issues for Handicaps', 'subtitle': ''},
//   {'title': 'Works related to women Documentation work', 'subtitle': ''},
// ];
// List<Map<String, String>> listOfCityMamlatdarSubOff = [
//   {'title': 'Property Rights', 'subtitle': ''},
//   {'title': 'Income Certificate', 'subtitle': ''},
//   {'title': 'Caste certificate', 'subtitle': ''},
//   {'title': 'Water-id', 'subtitle': ''},
//   {'title': 'Illegal land  Operation', 'subtitle': ''},
// ];
// List<Map<String, String>> listOfCorporateSubOff = [
//   {'title': 'Birth Certificate', 'subtitle': ''},
//   {'title': 'Death Certificate', 'subtitle': ''},
//   {'title': 'Property tax bill', 'subtitle': ''},
//   {'title': 'Aadharcard update', 'subtitle': ''},
//   {
//     'title': 'Revenue Collection',
//     'subtitle': 'hint: Private businesses and individual taxpayers '
//   },
//   {'title': 'Supervising Bridge /dam', 'subtitle': ''},
// ];
// List<Map<String, String>> listOfPrant2SubOff = [
//   {'title': 'Ashant Dharo Certificate', 'subtitle': ''},
//   {'title': 'Land related work', 'subtitle': ''},
//   {'title': 'Supervision of Municipality', 'subtitle': ''},
//   {
//     'title':
//         ' Certificate for organization of entertainment programs, arms license, Hotel license.',
//     'subtitle': ''
//   },
//   {'title': 'S.S.C., H.S.C. Exam', 'subtitle': ''},
//   {
//     'title': 'Pulse Polio Vaccination',
//     'subtitle': 'hint : Health & Family Welfare Department'
//   },
// ];
// List<Map<String, String>> listOfPrant1SubOff = [
//   {'title': 'Ashant Dharo Certificate', 'subtitle': ''},
//   {'title': 'Land related work', 'subtitle': ''},
//   {'title': 'Supervision of Municipality', 'subtitle': ''},
//   {
//     'title':
//         ' Certificate for organization of entertainment programs, arms license, Hotel license.',
//     'subtitle': ''
//   },
//   {'title': 'S.S.C., H.S.C. Exam', 'subtitle': ''},
//   {
//     'title': 'Pulse Polio Vaccination',
//     'subtitle': 'hint : Health & Family Welfare Department'
//   },
// ];
// List<Map<String, String>> listOfNewCollectorSubOff = [
//   {
//     'title': 'Land revenue and Other Taxes',
//     'subtitle': 'Hint: land related problem'
//   },
//   {
//     'title': 'Land records and their updates',
//     'subtitle': 'Hint: any other update on land records'
//   },
//   {'title': 'Land rights', 'subtitle': 'hint: Land Rights Policy '},
//   {'title': 'Urban land ceilling', 'subtitle': ' hint: limit of land Area'},
//   {
//     'title': 'Illegal land  Operation',
//     'subtitle': 'hint: Illegal property Rights '
//   },
// ];
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complain_app/global_string.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

final db = FirebaseFirestore.instance;
final firebase = FirebaseAuth.instance;
const String complaintDataRef = 'complaints';

List<Map<String, String>> listOfBahumaliBhavanSubOff = [
  {'title': nonCriminal.tr, 'subtitle': nCrHint.tr},
  {'title': casteCertificate.tr, 'subtitle': cCHint.tr},
  {'title': narmadaCanalIssuesForHandicaps.tr, 'subtitle': 'HINT:Nothing'},
  {'title': worksRelatedToWomenDocumentationWork.tr, 'subtitle': wDHint.tr},
];
List<Map<String, String>> listOfCityMamlatdarSubOff = [
  {'title': propertyRights.tr, 'subtitle': pRHint.tr},
  {'title': incomeCertificate.tr, 'subtitle': iCHint.tr},
  {'title': casteCertificate.tr, 'subtitle': cCHint.tr},
  {'title': waterId.tr, 'subtitle': 'HINT : ${pRHint.tr}'},
  {'title': illegalLandOperation.tr, 'subtitle': 'HINT :Nothing'},
];
List<Map<String, String>> listOfCorporateSubOff = [
  {'title': birthCertificate.tr, 'subtitle': birthCerHint.tr},
  {'title': deathCertificate.tr, 'subtitle': deathCerHint.tr},
  {'title': propertyTaxBill.tr, 'subtitle': propertyTBHint.tr},
  {'title': aadharcardUpdate.tr, 'subtitle': aUpdateHint.tr},
  {'title': revenueCollection.tr, 'subtitle': rCHint.tr},
  {'title': supervisingBridgeDam.tr, 'subtitle': bridgeDHint.tr},
];
List<Map<String, String>> listOfPrant2SubOff = [
  {'title': ashantDharoCertificate.tr, 'subtitle': aDHint.tr},
  {'title': landRelatedWork.tr, 'subtitle': legalRWHint.tr},
  {'title': supervisionOfMunicipality.tr, 'subtitle': stateMHint.tr},
  {
    'title': certificateForOrganizationOfEntertainmentPrograms.tr,
    'subtitle': eAHCHint.tr
  },
  {'title': sscHscExam.tr, 'subtitle': sHEHint.tr},
  {'title': pulsePolioVaccination.tr, 'subtitle': pPV.tr},
];
List<Map<String, String>> listOfPrant1SubOff = [
  {'title': ashantDharoCertificate.tr, 'subtitle': aDHint1.tr},
  {'title': landRelatedWork.tr, 'subtitle': lRWHint1.tr},
  {'title': supervisionOfMunicipality.tr, 'subtitle': sMHint1.tr},
  {
    'title': certificateForOrganizationOfEntertainmentPrograms.tr,
    'subtitle': 'Nothing',
  },
  {'title': 'S.S.C., H.S.C. Exam'.tr, 'subtitle': 'Nothing'},
  {
    'title': 'Pulse Polio Vaccination'.tr,
    'subtitle': pPV1.tr,
  },
];
List<Map<String, String>> listOfNewCollectorSubOff = [
  {'title': landRevenueAndOtherTaxes.tr, 'subtitle': lRHint.tr},
  {'title': landRecordsAndTheirUpdates.tr, 'subtitle': lRUHint.tr},
  {'title': landRights.tr, 'subtitle'.tr: landRightHint.tr},
  {'title': urbanLandCeilling.tr, 'subtitle': uCHint.tr},
  {'title': illegalLand.tr, 'subtitle': iOHint.tr},
];

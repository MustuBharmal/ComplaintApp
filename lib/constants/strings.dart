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
  {'title': 'Non-Criminal'.tr, 'subtitle': NCrHint.tr},
  {'title': 'Caste certificate'.tr, 'subtitle': CCHint.tr},
  {'title': 'Narmada canal issues for Handicaps'.tr, 'subtitle': 'HINT:Nothing'},
  {
    'title': 'Works related to women Documentation work'.tr,
    'subtitle':WDHint.tr
  },
];
List<Map<String, String>> listOfCityMamlatdarSubOff = [
  {'title': 'Property Rights'.tr, 'subtitle': PRHint.tr},
  {'title': 'Income Certificate'.tr, 'subtitle':ICHint.tr},
  {'title': 'Caste certificate'.tr, 'subtitle':CCHint.tr},
  {'title': 'Water-id'.tr, 'subtitle': 'HINT : Nothing'},
  {'title': 'Illegal land  Operation'.tr, 'subtitle': 'HINT :Nothing'},
];
List<Map<String, String>> listOfCorporateSubOff = [
  {'title': 'Birth Certificate'.tr, 'subtitle':BCHint.tr},
  {'title': 'Death Certificate'.tr, 'subtitle':DCHint.tr},
  {'title': 'Property tax bill'.tr, 'subtitle': PTBHint.tr},
  {'title': 'Aadharcard update'.tr, 'subtitle':AUHint.tr},
  {'title': 'Revenue Collection'.tr, 'subtitle':RCHint.tr},
  {'title': 'Supervising Bridge /dam'.tr, 'subtitle':BDHint.tr},
];
List<Map<String, String>> listOfPrant2SubOff = [
  {'title': 'Ashant Dharo Certificate'.tr, 'subtitle':ADHint.tr},
  {'title': 'Land related work'.tr, 'subtitle':LRWHint.tr},
  {'title': 'Supervision of Municipality'.tr, 'subtitle':SMHint.tr},
  {
    'title':
    ' Certificate for organization of entertainment programs, arms license, Hotel license'.tr,
    'subtitle':EAHCHint.tr
  },
  {'title': 'S.S.C., H.S.C. Exam'.tr, 'subtitle':SHEHint.tr},
  {
    'title': 'Pulse Polio Vaccination'.tr,
    'subtitle': PPV.tr
  },
];
List<Map<String, String>> listOfPrant1SubOff = [
  {'title': 'Ashant Dharo Certificate'.tr, 'subtitle':ADHint1.tr},
  {'title': 'Land related work'.tr, 'subtitle': LRWHint1.tr},
  {'title': 'Supervision of Municipality'.tr, 'subtitle':SMHint1.tr},
  {
    'title':
    ' Certificate for organization of entertainment programs, arms license, Hotel license'.tr,
    'subtitle': 'Nothing',
  },
  {'title': 'S.S.C., H.S.C. Exam'.tr, 'subtitle': 'Nothing'},
  {
    'title': 'Pulse Polio Vaccination'.tr,
    'subtitle':PPV1.tr,
  },
];
List<Map<String, String>> listOfNewCollectorSubOff = [
  {'title': 'Land revenue and Other Taxes'.tr, 'subtitle':LRHint.tr},
  {'title': 'Land records and their updates'.tr, 'subtitle':LRUHint.tr},
  {'title': 'Land rights'.tr, 'subtitle'.tr: LandRHint.tr},
  {'title': 'Urban land ceilling'.tr, 'subtitle':UCHint.tr},
  {'title': 'Illegal land  Operation'.tr, 'subtitle':IOHint.tr},
];

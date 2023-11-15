import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

String listOfDept = 'List of Department';
String newCollOff = 'New Collector Office';
String cityMamlatdarOff = 'City Mamlatdar Office';
String prant1 = 'Prant-1';
String prant2 = 'Prant-2';
String bahumaliBhavan = 'Bahumali Bhavan';
String corporateOff = 'Corporation Office';
final db = FirebaseFirestore.instance;
final firebase = FirebaseAuth.instance;
const String complaintDataRef = 'complaints';
List<Map<String, String>> listOfBahumaliBhavanSubOff = [
  {'title': 'Non-Criminal', 'subtitle': ''},
  {'title': 'Cast certificate', 'subtitle': ''},
  {'title': 'Narmada canal issues for Handicaps', 'subtitle': ''},
  {'title': 'Works related to women Documentation work', 'subtitle': ''},
];
List<Map<String, String>> listOfCityMamlatdarSubOff = [
  {'title': 'Property Rights', 'subtitle': ''},
  {'title': 'Income Certificate', 'subtitle': ''},
  {'title': 'Caste certificate', 'subtitle': ''},
  {'title': 'Water-id', 'subtitle': ''},
  {'title': 'Illegal land  Operation', 'subtitle': ''},
];
List<Map<String, String>> listOfCorporateSubOff = [
  {'title': 'Birth Certificate', 'subtitle': ''},
  {'title': 'Death Certificate', 'subtitle': ''},
  {'title': 'Property tax bill', 'subtitle': ''},
  {'title': 'Aadharcard update', 'subtitle': ''},
  {
    'title': 'Revenue Collection',
    'subtitle': 'hint: Private businesses and individual taxpayers '
  },
  {'title': 'Supervising Bridge /dam', 'subtitle': ''},
];
List<Map<String, String>> listOfPrant2SubOff = [
  {'title': 'Ashant Dharo Certificate', 'subtitle': ''},
  {'title': 'Land related work', 'subtitle': ''},
  {'title': 'Supervision of Municipality', 'subtitle': ''},
  {
    'title':
        ' Certificate for organization of entertainment programs, arms license, Hotel license.',
    'subtitle': ''
  },
  {'title': 'S.S.C., H.S.C. Exam', 'subtitle': ''},
  {
    'title': 'Pulse Polio Vaccination',
    'subtitle': 'hint : Health & Family Welfare Department'
  },
];
List<Map<String, String>> listOfPrant1SubOff = [
  {'title': 'Ashant Dharo Certificate', 'subtitle': ''},
  {'title': 'Land related work', 'subtitle': ''},
  {'title': 'Supervision of Municipality', 'subtitle': ''},
  {
    'title':
        ' Certificate for organization of entertainment programs, arms license, Hotel license.',
    'subtitle': ''
  },
  {'title': 'S.S.C., H.S.C. Exam', 'subtitle': ''},
  {
    'title': 'Pulse Polio Vaccination',
    'subtitle': 'hint : Health & Family Welfare Department'
  },
];
List<Map<String, String>> listOfNewCollectorSubOff = [
  {
    'title': 'Land revenue and Other Taxes',
    'subtitle': 'Hint: land related problem'
  },
  {
    'title': 'Land records and their updates',
    'subtitle': 'Hint: any other update on land records'
  },
  {'title': 'Land rights', 'subtitle': 'hint: Land Rights Policy '},
  {'title': 'Urban land ceilling', 'subtitle': ' hint: limit of land Area'},
  {
    'title': 'Illegal land  Operation',
    'subtitle': 'hint: Illegal property Rights '
  },
];

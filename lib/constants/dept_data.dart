
import 'package:complain_app/global_string.dart';
import 'package:complain_app/models/dept_model.dart';
import 'package:get/get.dart';

List<Dept> deptData = [
  Dept(
    id: 'o1',
    name:  newCollOff,            //'New collector office',
    subDept: [
      'Land revenue and other taxes',
      'Land records and their updates',
      'Land rights',
      'Urban land ceiling',
      'Education and health related issues',
      'Public welfare and development',
      'Food and civil supplies',
    ],
  ),
  Dept(
    id: 'o2',
    name: cityMamlatdarOff.tr,   // 'City Mamlatdar office',
    subDept: [
      'Land revenue',
      'Property rights',
      'Keeping records and documentation',
      'Illegal land operations',
      'Income certificate',
      'Work for Talati minister',
      'Cast certificate',
      'Water -Id',
    ],
  ),
  Dept(
    id: 'o3',
    name: prant1.tr,//'Prant-I',
    subDept: [
      'Ashant dharo certificate',
      'Land related works',
    ],
  ),
  Dept(
    id: 'o4',
    name: prant2.tr,//'Prant-II',
    subDept: [
      'Land related issues',
      'Works for the villages of Rajkot district',
    ],
  ),
  Dept(
    id: 'o4',
    name: bahumaliBhavan.tr,//'Bahumadi bhavan',
    subDept: [
      'Non- criminal',
      'Cast certificate',
      'Narmada canal issues',
      'For Handicaps',
      'Work related to women',
      'Documention work',
    ],
  ),
  Dept(
    id: 'o5',
    name: corporateOff.tr,//'Corporation office',
    subDept: [
      'Birth certificate',
      'Death certificate',
      'Property tax bill',
      'Supervising Bridge/dam',
      'Aadarcard update',
    ],
  ),
];

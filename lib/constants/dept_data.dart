
import 'package:complain_app/global_string.dart';
import 'package:complain_app/models/dept_model.dart';
import 'package:get/get.dart';

List<Dept> deptData = [
  Dept(
    id: 'o1',
    name:  newCollOff.tr,            //'New collector office',
    subDept: [
      landRevenueAndOtherTaxes.tr,
      landRecordsAndTheirUpdates.tr,
      landRights.tr,
      urbanLandCeilling.tr,
      educationAndHealth.tr,
      welfareAndDevelop.tr,
      foodAndCivil.tr
    ],
  ),
  Dept(
    id: 'o2',
    name: cityMamlatdarOff.tr,   // 'City Mamlatdar office',
    subDept: [
      landRevenueAndOtherTaxes.tr,
      propertyRights.tr,
      recordAndDocu.tr,
      illegalLandOperation.tr,
      incomeCertificate.tr,
      talatiMinister.tr,
      casteCertificate.tr,
      waterId.tr
    ],
  ),

  Dept(
    id: 'o3',
    name: prant1.tr,//'Prant-I',
    subDept: [
      ashantDharoCertificate.tr,
      landRelatedWork.tr
    ],
  ),
  Dept(
    id: 'o4',
    name: prant2.tr,//'Prant-II',
    subDept: [
      landRelatedWork.tr,
      workForVillage.tr,
    ],
  ),
  Dept(
    id: 'o4',
    name: bahumaliBhavan.tr,//'Bahumadi bhavan',
    subDept: [
      nonCriminal.tr,
      casteCertificate.tr,
     narmadaCanalIssuesForHandicaps.tr,
      worksRelatedToWM.tr,
      documets.tr,
    ],
  ),
  Dept(
    id: 'o5',
    name: corporateOff.tr,//'Corporation office',
    subDept: [
      birthCertificate.tr,
      deathCertificate.tr,
      propertyTaxBill.tr,
      supervisingBridgeDam.tr,
      aadharcardUpdate.tr
    ],
  ),
];


import 'package:complain_app/global_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/strings.dart';
import '../widgets/list_sub_off_widget.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  static const String routeName = 'dept';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listOfDept.tr,
          style: const TextStyle(fontSize: 28),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              newCollOff.tr,
              listOfNewCollectorSubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              cityMamlatdarOff.tr,
              listOfCityMamlatdarSubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              prant1.tr,
              listOfPrant1SubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              prant2.tr,
              listOfPrant2SubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              bahumaliBhavan.tr,
              listOfBahumaliBhavanSubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              corporateOff.tr,
              listOfCorporateSubOff,
            ),
          ),
        ],
      ),
    );
  }
}

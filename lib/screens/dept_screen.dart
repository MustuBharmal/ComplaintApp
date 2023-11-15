import 'package:flutter/material.dart';

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
          listOfDept,
          style: const TextStyle(fontSize: 28),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              newCollOff,
              listOfNewCollectorSubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              cityMamlatdarOff,
              listOfCityMamlatdarSubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              prant1,
              listOfPrant1SubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              prant2,
              listOfPrant2SubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              bahumaliBhavan,
              listOfBahumaliBhavanSubOff,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListWidget(
              corporateOff,
              listOfCorporateSubOff,
            ),
          ),
        ],
      ),
    );
  }
}

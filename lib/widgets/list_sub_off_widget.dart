import 'package:flutter/material.dart';

import '../screens/sub_off_screen.dart';

class ListWidget extends StatelessWidget {
  final String offName;
  final List<Map<String, String>> list;

  const ListWidget(
    this.offName,
    this.list, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          arguments: list,
          SubOffices.routeName,
        );
      },
      child: Container(
        width: 400,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xffFFF0CE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            offName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

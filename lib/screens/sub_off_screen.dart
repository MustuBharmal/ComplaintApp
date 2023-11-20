import 'package:complain_app/global_string.dart';
import 'package:flutter/material.dart';

class SubOffices extends StatelessWidget {
  const SubOffices({super.key});

  static const String routeName = 'sub-offices';

  @override
  Widget build(BuildContext context) {
    final list =
        ModalRoute.of(context)!.settings.arguments as List<Map<String, String>>;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listofsub//'List of Sub offices',
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
            color: Colors.black,
          );
        },
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(
                Icons.star,
                color: Colors.white,
              ),
            ),
            title: Text(
              list[index]['title']!,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(list[index]['subtitle']!),
          );
        },
      ),
    );
  }
}

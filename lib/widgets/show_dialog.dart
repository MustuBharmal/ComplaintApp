
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var query = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: query.height,
        width: query.width,
        child: AlertDialog(
          title: const Text('Your complaint is submitted'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                },
                child: const Text('Okay'))
          ],
        ),
      ),
    );
  }
}

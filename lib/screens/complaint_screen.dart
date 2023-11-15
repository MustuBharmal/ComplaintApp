import 'package:complain_app/screens/inbox_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/complaint_provider.dart';
import '../provider/user_provider.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({super.key});

  static const String routeName = '/complaint-screen';

  @override
  Widget build(BuildContext context) {
    final passedId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedData = Provider.of<ComplaintProvider>(
      context,
      listen: false,
    ).findById(passedId);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: GlobalVariables.appBarColor,
        title: const Text('Complaint Details'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          children: <Widget>[
            Text(
              loadedData.probName,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                const Text(
                  'Posted by ',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Text(
                    (Provider.of<UserProvider>(context).userModel!.name!)
                        .toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    loadedData.probDsc,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    (loadedData.status).toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      color: loadedData.status == 'Rejected'
                          ? Colors.red
                          : loadedData.status == 'Solved'
                              ? Colors.green
                              : loadedData.status == 'In Progress'
                                  ? Colors.blue
                                  : loadedData.status == 'Passed'
                                      ? Colors.cyan
                                      : Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Status',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        InboxScreen.routeName,
                        arguments: loadedData.id,
                      );
                    },
                    child: const Icon(Icons.messenger),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../global_string.dart';
import '../models/complaint_model.dart';
import '../provider/complaint_provider.dart';
import '../widgets/complaint_card.dart';

class YourComplaints extends StatefulWidget {
  const YourComplaints({super.key});

  static const String routeName = '/list-details-screen';

  @override
  State<StatefulWidget> createState() => _YourComplaintsState();
}

class _YourComplaintsState extends State<YourComplaints> {
  bool dataFetched = false;

  late List<ComplaintModel> complaintData = [];
  var _isInit = true;
  var _isLoading = false;
  List<ComplaintModel>? selectedEventList = [];

  @override
  void didChangeDependencies() {
    if (!dataFetched) {
      String args = ModalRoute.of(context)!.settings.arguments as String;
      if (args == 'all') {
        complaintData = Provider.of<ComplaintProvider>(context).allComplaints;
      } else {
        complaintData =
            Provider.of<ComplaintProvider>(context).getPendingComplaints(args);
      }
    }
    dataFetched = true;
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<ComplaintProvider>(context).fetchComplaintData().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Complaints'.tr),),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : RefreshIndicator(
              onRefresh: () async{
                Provider.of<ComplaintProvider>(context,listen: false).fetchComplaintData();
              },
              child: Stack(
                children: [
                  complaintData.isEmpty
                      ?  Center(
                      child: Text(
                          Message.tr,
                        style: const TextStyle(fontSize: 20),
                      ))
                      : ListView.builder(
                        itemBuilder: (ctx, i) => ComplaintCard(
                          complaintData[i].id,
                          complaintData[i].probName,
                          complaintData[i].probDsc,
                          complaintData[i].off,
                          complaintData[i].createdAt,
                          complaintData[i].status,
                        ),
                        itemCount: complaintData.length,
                      ),
                ],
              ),
            ),
    );
  }
}

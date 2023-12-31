import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complain_app/global_string.dart';
import 'package:complain_app/models/complaint_model.dart';
import 'package:complain_app/provider/complaint_provider.dart';
import 'package:complain_app/provider/user_provider.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../constants/global_variables.dart';
import '../models/prob_model.dart';
import '../widgets/docs_image_picker.dart';

class AddComplaints extends StatefulWidget {
  static const routeName = '/complain-form-screen';

  const AddComplaints({super.key});

  @override
  State<AddComplaints> createState() => _AddComplaintsState();
}

class _AddComplaintsState extends State<AddComplaints> {
  // List<Problem> dept = deptData;
  File? _selectedImage;
  final _form = GlobalKey<FormState>();
  final _probName = TextEditingController();
  final _probDsc = TextEditingController();
  final _imgUrl = TextEditingController();
  final _cityName = TextEditingController();
  String selectedProb = '';

  final _selectedOff = TextEditingController();
  final _selectedSubOff = TextEditingController();
  List<Problem> probData = [];
  var _editedComplaint = ComplaintModel(
    id: '',
    probName: '',
    state: '',
    dist: '',
    city: '',
    off: '',
    subOff: '',
    probDsc: '',
    status: '',
    imgUrl: '',
    userId: '',
    complaintId: '',
    createdAt: Timestamp.now(),
  );
  var _isLoading = false;

  @override
  void dispose() {
    _cityName.dispose();
    _probName.dispose();
    _imgUrl.dispose();
    _probDsc.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    Provider.of<UserProvider>(context).fetchProbData().then((data) {
      setState(() {
        probData = data;
      });
    }).catchError((error) {
      print("Error to load data: $error");
    });
    super.didChangeDependencies();
  }

  Future<void> _saveForm() async {
    final isValid = _form.currentState!.validate();
    if (!isValid || _selectedImage == null) {
      return;
    }
    _form.currentState!.save();
    setState(() {
      _isLoading = true;
    });
    if (_editedComplaint.id != '') {
      await Provider.of<ComplaintProvider>(context, listen: false).updatePerson(
        _editedComplaint.id,
        _editedComplaint,
      );
    } else {
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('images')
          .child('${_probName.text}.jpg');
      await storageRef.putFile(_selectedImage!);
      _editedComplaint.imgUrl = await storageRef.getDownloadURL();
      _editedComplaint = ComplaintModel(
        id: _editedComplaint.id,
        probName: selectedProb,
        probDsc: _probDsc.text,
        city: _cityName.text,
        state:
            Provider.of<UserProvider>(context, listen: false).userModel!.state!,
        off: _selectedOff.text,
        subOff: _selectedSubOff.text,
        dist:
            Provider.of<UserProvider>(context, listen: false).userModel!.dist!,
        status: 'pending',
        imgUrl: _editedComplaint.imgUrl,
        userId: FirebaseAuth.instance.currentUser!.uid,
        complaintId: Provider.of<UserProvider>(context, listen: false)
                .userModel!
                .dist!
                .substring(0, 3) +
            Provider.of<UserProvider>(context, listen: false)
                .userModel!
                .name!
                .substring(0, 3) +
            Timestamp.now().toString().substring(0, 5),
        createdAt: Timestamp.now(),
        reason: '',
      );
      await Provider.of<ComplaintProvider>(context, listen: false)
          .addComplaintData(_editedComplaint);
    }
    setState(() {
      _isLoading = false;
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        elevation: 5,
        content: Text('Your Complaint is submitted'),
      ),
    );
    Navigator.of(context).pop();
  }

  Widget showAlertBox() {
    return AlertDialog(
      title: Text(submitted.tr),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Okay'))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(addComplaint.tr),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Form(
              key: _form,
              child: ListView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                children: <Widget>[
                  problemName(),
                  const Divider(
                    height: 50,
                  ),
                  customTextFormField(
                      _cityName, const Icon(LineIcons.city), cityName, "Anand"),
                  const Divider(
                    height: 50,
                  ),
                  deptDropdown(),
                  const Divider(
                    height: 50,
                  ),
                  subDeptDropdown(),
                  const Divider(
                    height: 50,
                  ),
                  customTextFormField(_probDsc,
                      const Icon(LineIcons.fileContract), problem, aadhar),
                  const Divider(
                    height: 50,
                  ),
                  DocsImagePicker(
                    onPickImage: (pickedImage) {
                      _selectedImage = pickedImage;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  submitButton(),
                ],
              ),
            ),
    );
  }

  Widget customTextFormField(TextEditingController controller, Icon icon,
      String labelText, String hintText) {
    return Row(
      children: [
        addPadding(icon),
        Expanded(
          child: TextFormField(
            maxLines: controller == _probDsc ? 5 : 1,
            controller: controller,
            validator: (value) {
              if (controller.text.isEmpty) return "This field can't be empty.";
              return null;
            },
            style: fieldStyle,
            autofocus: true,
            decoration: InputDecoration(
              fillColor: ThemeColor.textFieldBgColor,
              filled: true,
              hintStyle: hintStyle,
              labelText: labelText.tr,
              hintText: hintText.tr,
            ),
          ),
        ),
      ],
    );
  }

  Widget problemName() {
    return Row(
      children: [
        addPadding(const Icon(Icons.house)),
        Expanded(
          child: DropdownSearch<Problem>(
            popupProps: const PopupProps.menu(
              showSearchBox: true,
            ),
            items: probData,
            itemAsString: (Problem prob) => prob.probName,
            // Specify how to convert items to strings
            onChanged: (selectedProblem) {
              setState(() {
                selectedProb = selectedProblem!.probName;
                _selectedOff.text = selectedProblem.dept;
                _selectedSubOff.text = selectedProblem.subDept;
              });
            },
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                hintStyle: hintStyle,
                hintText: selectProb.tr,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget deptDropdown() {
    return Row(
      children: [
        addPadding(const Icon(Icons.house)),
        Expanded(
          child: TextFormField(
            validator: (value) {
              if (_selectedOff.text.isEmpty) {
                return "This field can't be empty.";
              }
              return null;
            },
            controller: _selectedOff,
            readOnly: true,
            style: fieldStyle,
            autofocus: true,
            decoration: InputDecoration(
                fillColor: ThemeColor.textFieldBgColor,
                filled: true,
                hintStyle: hintStyle,
                labelText: selectOffice.tr),
          ),
        ),
      ],
    );
  }

  Widget subDeptDropdown() {
    return Row(
      children: [
        addPadding(const Icon(Icons.house)),
        Expanded(
          child: TextFormField(
            validator: (value) {
              if (_selectedSubOff.text.isEmpty) {
                return "This field can't be empty.";
              }
              return null;
            },
            controller: _selectedSubOff,
            readOnly: true,
            style: fieldStyle,
            autofocus: true,
            decoration: InputDecoration(
                fillColor: ThemeColor.textFieldBgColor,
                filled: true,
                hintStyle: hintStyle,
                labelText: subOffice.tr),
          ),
        ),
      ],
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {
        _saveForm();
      },
      child: Text(save.tr),
    );
  }

  Widget addPadding(Widget data) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: data,
    );
  }
}
// DropdownButtonFormField(
// decoration: InputDecoration(
// fillColor: ThemeColor.textFieldBgColor,
// filled: true,
// hintStyle: hintStyle,
// hintText: selectProb.tr,
// ),
// isExpanded: true,
// items: probData
//     .map(
// (Problem prob) => DropdownMenuItem<String>(
// value: prob.probName,
// child: Text(
// prob.probName,
// style: dropdownStyle,
// ),
// ),
// )
//     .toList(),
// onChanged: (value) {
// setState(() {
// selectedProb = value!;
// _selectedOff.text = probData
//     .firstWhere((prob) => prob.probName == selectedProb)
//     .dept;
// _selectedSubOff.text = probData
//     .firstWhere((prob) => prob.probName == selectedProb)
//     .subDept;
// });
// },
// ),

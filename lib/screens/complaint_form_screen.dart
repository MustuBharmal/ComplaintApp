import 'dart:io';

import 'package:complain_app/global_string.dart';
import 'package:complain_app/models/complaint_model.dart';
import 'package:complain_app/provider/complaint_provider.dart';
import 'package:complain_app/provider/user_provider.dart';
import 'package:complain_app/widgets/show_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../constants/dept_data.dart';
import '../models/dept_model.dart';
import '../models/states_dist_model.dart';
import '../widgets/docs_image_picker.dart';

class ComplaintFormScreen extends StatefulWidget {
  static const routeName = '/complain-form-screen';

  const ComplaintFormScreen({super.key});

  @override
  State<ComplaintFormScreen> createState() => _ComplaintFormScreenState();
}

class _ComplaintFormScreenState extends State<ComplaintFormScreen> {
  List<Dept> dept = deptData;
  File? _selectedImage;
  final _form = GlobalKey<FormState>();
  final _probName = TextEditingController();
  final _probDsc = TextEditingController();
  final _imgUrl = TextEditingController();
  final _cityName = TextEditingController();
  List<StateModel> states = [];
  Dept? selectedOff;
  String? selectOff;
  String? selectedSubOff;
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
        probName: _probName.text,
        probDsc: _probDsc.text,
        city: _cityName.text,
        state:
            Provider.of<UserProvider>(context, listen: false).userModel!.state!,
        off: selectedOff!.name,
        subOff: selectedSubOff!,
        dist:
            Provider.of<UserProvider>(context, listen: false).userModel!.dist!,
        status: 'pending',
        imgUrl: _editedComplaint.imgUrl,
        userId: FirebaseAuth.instance.currentUser!.uid,
        complaintId: Provider.of<UserProvider>(context, listen: false)
            .userModel!
            .dist!
            .substring(0, 3),
      );
      await Provider.of<ComplaintProvider>(context, listen: false)
          .addComplaintData(_editedComplaint);
    }
    setState(() {
      _isLoading = false;
    });
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ShowDialog()));


  }

  Widget showAlertBox() {
    return AlertDialog(
      title: Text(submited.tr),
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
                  probTitleTextField(),
                  const Divider(
                    height: 50,
                  ),
                  cityTextField(),
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
                  dscProbTextField(),
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

  Widget probTitleTextField() {
    return Row(
      children: [
        addPadding(const Icon(Icons.person)),
        Expanded(
          child: TextFormField(
            controller: _probName,
            validator: (value) {
              if (value!.isEmpty) return "Problem name field can't be empty";
              return null;
            },
            autofocus: true,
            decoration:  InputDecoration(
              labelText: problemname.tr,
              hintText: adharcardaddress.tr,
            ),
          ),
        ),
      ],
    );
  }

  Widget cityTextField() {
    return Row(
      children: [
        addPadding(const Icon(Icons.location_city)),
        Expanded(
          child: TextFormField(
            controller: _cityName,
            validator: (value) {
              if (value!.isEmpty) return "City name field can't be empty";
              return null;
            },
            autofocus: true,
            decoration: InputDecoration(
              labelText: cityname.tr,
              hintText: "Unai",
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
          child: DropdownButtonFormField(
            validator: (value) {
              if (selectedOff?.name == null) {
                return "Office field can't be empty";
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: selectoffice.tr,
            ),
            isExpanded: true,
            value: selectedOff,
            items: deptData
                .map(
                  (Dept dept) => DropdownMenuItem(
                    value: dept,
                    child: Text(dept.name),
                  ),
                )
                .toList(),
            onChanged: (Dept? value) {
              setState(() {
                selectedOff = value!;
              });
            },
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
          child: DropdownButtonFormField<String>(
            validator: (value) {
              if (selectedSubOff == null) {
                return "Sub-office field can't be empty";
              }
              return null;
            },
            hint: Text(suboffice.tr),
            isExpanded: true,
            value: selectedSubOff,
            items: selectedOff != null
                ? selectedOff!.subDept.map((String subDeptName) {
                    return DropdownMenuItem(
                      value: subDeptName,
                      child: Text(
                        subDeptName,
                      ),
                    );
                  }).toList()
                : [],
            onChanged: (String? value) {
              setState(() {
                selectedSubOff = value;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget dscProbTextField() {
    return Row(
      children: [
        addPadding(
          const Icon(Icons.description),
        ),
        Expanded(
          child: TextFormField(
            maxLines: 5,
            controller: _probDsc,
            validator: (value) {
              if (value!.isEmpty)
                return "Problem description field can't be empty";
              return null;
            },
            decoration:  InputDecoration(
              labelText: problem.tr,
              hintText: adhar.tr,
            ),
          ),
        ),
      ],
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: (){
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

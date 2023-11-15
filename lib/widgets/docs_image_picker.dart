import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DocsImagePicker extends StatefulWidget {
  const DocsImagePicker({
    super.key,
    required this.onPickImage,
  });

  final void Function(File pickedImage) onPickImage;

  @override
  State<DocsImagePicker> createState() => _DocsImagePickerState();
}

class _DocsImagePickerState extends State<DocsImagePicker> {
  File? _imageFile;

  Future<void> pickPic(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source,
      imageQuality: 50,
    );
    if (pickedFile == null) {
      return;
    }
    setState(() {
      _imageFile = File(pickedFile.path);
    });

    widget.onPickImage(_imageFile!);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            right: 10.0,
          ),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.grey,
            foregroundImage: _imageFile != null ? FileImage(_imageFile!) : null,
            child: const Icon(Icons.edit_document),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black54,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(4.0)),
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Row(
                  children: <Widget>[

                      SizedBox(
                        height: 50,
                        child: Text(
                          'Add document',
                          textAlign: TextAlign.right,
                          style: TextStyle(

                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Choose Event Image",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton.icon(
            onPressed: () {
              pickPic(
                ImageSource.gallery,
              );
            },
            icon: const Icon(
              Icons.image,
            ),
            label: const Text(
              "Gallery",
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder borderDecorate() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.background,
      ),
    );
  }

  OutlineInputBorder focusedBorderDecorate() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.background,
        width: 2,
      ),
    );
  }
}

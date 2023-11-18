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
            child: _imageFile == null ? const Icon(Icons.edit_document) : null,
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
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                      child: Text(
                        _imageFile == null ? 'Add document' : 'Document Added!',
                        style: const TextStyle(
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
      width: MediaQuery
          .of(context)
          .size
          .width,
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
          Row(
            children: [
              Expanded(
                child: TextButton.icon(
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
              ),
              Flexible(
                child: TextButton.icon(
                  onPressed: () {
                    pickPic(
                      ImageSource.camera,
                    );
                  },
                  icon: const Icon(
                    Icons.image,
                  ),
                  label: const Text(
                    "Camera",
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
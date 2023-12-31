import 'dart:convert';

import 'package:complain_app/constants/util.dart';
import 'package:complain_app/global_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(context, jsonDecode(response.body)[msg.tr]);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)[error.tr]);
      break;
    default:
      showSnackBar(context, response.body);
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ZomatoApiConstants {
  static const String headerApiKey = 'user-key';
  static const String keyQuery = 'q';
  static const String api = "7d2b9f5a4b15182184733ecb325b138e";
  static const String url = 'https://developers.zomato.com/api/v2.1/search?';
  static const String headerAccept = "Accept";
  static const String accept = "application/json";
}

String cityNameToDisplay = '';
double lat = 0.0;
double long = 0.0;

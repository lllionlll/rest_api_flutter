import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  Future<void> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://strawberryy.herokuapp.com/api/v1/users/'));

    if (response.statusCode == 200) {
      var v = convert.jsonDecode(response.body);
      var list = v['data'];
      print(list[4]['email']);
    } else {
      throw Exception('Failed to load album');
    }
  }

  fetchAlbum();
}
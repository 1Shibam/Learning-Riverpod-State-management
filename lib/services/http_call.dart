import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/models/user_data_model.dart';
import 'package:http/http.dart' as http;

class HttpCall {
  Future<UserDataModel> fetchUserData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/2'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      return UserDataModel.fromJson(jsonData);
    } else {
      throw Exception('Failed to load user data');
    }
  }
}

final userRepositoryProvider = Provider((ref) => HttpCall());

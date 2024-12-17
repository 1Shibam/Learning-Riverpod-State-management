import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/models/user_data_model.dart';
import 'package:http/http.dart' as http;

final userProvider = FutureProvider<UserDataModel>((ref) async {
  const String baseUrl = 'https://randomuser.me/api/';
  try {
    final userDataResponse = await http.get(Uri.parse(baseUrl));
    if (userDataResponse.statusCode == 200) {
      final Map<String, dynamic> jsonRespone =
          jsonDecode(userDataResponse.body);

      return UserDataModel.fromJson(jsonRespone);
    } else {
      throw Exception('something went wrong');
    }
  } catch (e) {
    throw Exception('Error Occured: $e');
  }
});

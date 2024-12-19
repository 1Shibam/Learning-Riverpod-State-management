// ignore_for_file: unused_import

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/models/user_data_model.dart';
import 'package:hehehehhee/services/http_call.dart';

// Replace with your model's file name

final userProvider = FutureProvider.family.autoDispose((ref, String input) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchUserData(input);
});

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/models/user_data_model.dart';
import 'package:hehehehhee/services/http_call.dart';

// Replace with your model's file name

final userProvider = FutureProvider<UserDataModel>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return userRepository.fetchUserData();
});

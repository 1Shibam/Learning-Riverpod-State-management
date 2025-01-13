import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Synchronous function to get user data
User fetchUser(int userId) {
  return User(userId: userId, name: 'User $userId');
}

// User class to represent user data
class User {
  final int userId;
  final String name;

  User({required this.userId, required this.name});
}

// Riverpod provider for fetching user data synchronously
final userProvider = Provider.family<User, int>((ref, userId) {
  return fetchUser(userId);
});

final textFieldProvider =
    Provider.autoDispose<TextEditingController>((ref) => TextEditingController());

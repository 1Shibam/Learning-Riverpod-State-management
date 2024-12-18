import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/models/normal_user.dart';

final textEditingControllerProvider =
    StateProvider((ref) => TextEditingController());

final newUserProvider =
    StateNotifierProvider<NormalUserNotifierProvider, NormalUser>((ref) =>
        NormalUserNotifierProvider(
            const NormalUser(name: '', age: 0, salary: 0)));

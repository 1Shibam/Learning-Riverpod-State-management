import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class NormalUser {
  final String name;
  final int age;
  final double? salary;

  const NormalUser({required this.name, required this.age, this.salary});
}

class NormalUserNotifierProvider extends StateNotifier<NormalUser> {
  NormalUserNotifierProvider(super.state);
  void updateName(String newName) {
    //this is fine but will be a length process if the data is bit like 
    //there are more class members this will get pretty messy just to change 
    //the name so we do something else for it
    state = NormalUser(name: newName, age: state.age);
  }
}

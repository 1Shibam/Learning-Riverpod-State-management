// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@immutable
class NormalUser {
  final String name;
  final int age;
  final double? salary;

  const NormalUser({
    required this.name,
    required this.age,
    this.salary,
  });

  NormalUser copyWith({
    String? name,
    int? age,
    double? salary,
  }) {
    return NormalUser(
      name: name ?? this.name,
      age: age ?? this.age,
      salary: salary ?? this.salary,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'salary': salary,
    };
  }

  factory NormalUser.fromMap(Map<String, dynamic> map) {
    return NormalUser(
      name: map['name'] as String,
      age: map['age'] as int,
      salary: map['salary'] != null ? map['salary'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NormalUser.fromJson(String source) =>
      NormalUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NormalUser(name: $name, age: $age, salary: $salary)';

  @override
  bool operator ==(covariant NormalUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age && other.salary == salary;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode ^ salary.hashCode;
}

class NormalUserNotifier extends StateNotifier<NormalUser> {
  NormalUserNotifier(super.state) {
    updateAge(16);
  }
  void updateName(String newName) {
    //this is fine but will be a length process if the data is bit like
    //there are more class members this will get pretty messy just to change
    //the name so we do something else for it

    //this will copy all the same properties fo state but only change the name variable
    state = state.copyWith(name: newName);
  }

  void updateAge(int umar) {
    state = state.copyWith(age: umar);
  }

  void updateSalary(double tankhwa) {
    state = state.copyWith(salary: tankhwa);
  }
}

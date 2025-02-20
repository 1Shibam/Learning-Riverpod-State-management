// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/again/home_screen_again.dart';
import 'package:hehehehhee/again/search_screen.dart';
import 'package:hehehehhee/screens/new_screen.dart';
import 'package:hehehehhee/screens/understanding_future_provider.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SearchScreen(),
    );
  }
}

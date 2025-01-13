import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final greetProvider = Provider((ref) => 'hello bitch');

class HomeScreenAgain extends ConsumerWidget {
  const HomeScreenAgain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greet = ref.watch(greetProvider);
    return Scaffold(
      body: Center(
        child: Text(
          greet,
          style: const TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

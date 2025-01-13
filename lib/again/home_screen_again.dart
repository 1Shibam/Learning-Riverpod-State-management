import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final greetProvider = StateProvider((ref) => 'hello bitch');

class HomeScreenAgain extends ConsumerWidget {
  const HomeScreenAgain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greet = ref.watch(greetProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLines: 1,
                autocorrect: true,
                onSubmitted: (value) {
                  ref.read(greetProvider.notifier).state = value;
                },
                decoration: InputDecoration(
                    focusColor: Colors.blue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 4)),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              greet,
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}

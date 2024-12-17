import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/providers/numbers.dart';

class NumsScreen extends ConsumerWidget {
  const NumsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numbers = ref.watch(numProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0).copyWith(bottom: 60),
        child: FloatingActionButton(
          onPressed: () {
            ref
                .read(numProvider.notifier)
                .addString('Number ${Random().nextInt(10000)}');
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: numbers
                .map((element) => GestureDetector(
                      onTap: () => ref
                          .read(numProvider.notifier)
                          .removeAnyString(element),
                      child: Text(
                        element,
                        style: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

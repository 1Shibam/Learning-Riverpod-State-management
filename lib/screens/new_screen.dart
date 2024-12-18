// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/providers/provider.dart';

//defined globally

class NewScreen extends ConsumerStatefulWidget {
  const NewScreen({super.key});

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends ConsumerState<NewScreen> {
  void onSubmit(WidgetRef ref, String value) {
    ref.read(newUserProvider.notifier).updateName(value);
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(newUserProvider);
    final nameController = ref.watch(textEditingControllerProvider);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('name: ${user.name}'),
              Text('Age: ${user.age}'),
              Text('Salary: ${user.salary}'),
              TextField(
                controller: nameController,
                onSubmitted: (value) {
                  onSubmit(ref, value);
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          onSubmit(ref, nameController.text);
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                    label: const Text('Change name here'),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onSubmitted: (value) {
                  onSubmit(ref, value);
                },
                decoration: const InputDecoration(
                    label: Text('Change name here'),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                onSubmitted: (value) {
                  onSubmit(ref, value);
                },
                decoration: const InputDecoration(
                    label: Text('Change name here'),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

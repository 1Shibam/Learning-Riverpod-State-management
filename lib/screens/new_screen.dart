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
  void changeName(WidgetRef ref, String value) {
    ref.read(newUserProvider.notifier).updateName(value);
  }

  void changeAge(WidgetRef ref, String value) {
    ref.read(newUserProvider.notifier).updateAge(value as int);
  }

  void changeSalary(WidgetRef ref, String value) {
    ref.read(newUserProvider.notifier).updateName(value);
  }

  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final FocusNode firstFocusNode = FocusNode();
  final FocusNode secondFocusNode = FocusNode();
  final FocusNode thirdFocusNode = FocusNode();
  @override
  void dispose() {
    super.dispose();
    ageController.dispose();
    salaryController.dispose();
    firstFocusNode.dispose();
    secondFocusNode.dispose();
    thirdFocusNode.dispose();
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
                focusNode: firstFocusNode,
                controller: nameController,
                onSubmitted: (value) {
                  changeName(ref, value);
                  FocusScope.of(context).requestFocus(secondFocusNode);
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          changeName(ref, nameController.text);
                          FocusScope.of(context).requestFocus(secondFocusNode);
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                    label: const Text('Change name here'),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                focusNode: secondFocusNode,
                onSubmitted: (value) {
                  changeAge(ref, value);
                  FocusScope.of(context).requestFocus(thirdFocusNode);
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          changeName(ref, nameController.text);
                          FocusScope.of(context).requestFocus(thirdFocusNode);
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                    label: const Text('Change name here'),
                    border: const OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                focusNode: thirdFocusNode,
                onSubmitted: (value) {
                  changeSalary(ref, value);
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          changeName(ref, nameController.text);
                        },
                        icon: const Icon(Icons.arrow_forward_ios)),
                    label: const Text('Change name here'),
                    border: const OutlineInputBorder()),
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

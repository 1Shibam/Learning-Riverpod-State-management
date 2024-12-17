import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/models/normal_user.dart';

//defined globally
final newUserProvider =
    StateNotifierProvider<NormalUserNotifierProvider, NormalUser>((ref) =>
        NormalUserNotifierProvider(
            const NormalUser(name: 'Enter Your Name', age: 0, salary: 0)));

class NewScreen extends ConsumerWidget {
  const NewScreen({super.key});

  void onSubmit(WidgetRef ref, String value) {
    ref.read(newUserProvider.notifier).updateName(value);
  }

  @override
  Widget build(BuildContext context, ref) {
    final user = ref.watch(newUserProvider);

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
                onSubmitted: (value) {
                  onSubmit(ref, value);
                },
                decoration: const InputDecoration(
                    label: Text('Change name here'),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

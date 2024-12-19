import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/providers/future_provider.dart';

class UnderstandingFutureProvider extends ConsumerWidget {
  const UnderstandingFutureProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Provider'),
          backgroundColor: Colors.lime,
        ),
        body: userData.when(
            data: (data) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Author: ${data.name}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Author: ${data.email}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Author: ${data.company}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Author: ${data.username}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Author: ${data.phone}'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Author: ${data.website}'),
                  ],
                ),
              );
            },
            error: (err, stack) => Text('you got a error my nigga: $err'),
            loading: () => const CircularProgressIndicator()));
  }
}

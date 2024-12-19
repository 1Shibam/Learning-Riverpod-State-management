// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/providers/future_provider.dart';
import 'package:hehehehhee/providers/stream_provider.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  String userNo = '1';
  TextEditingController myController = TextEditingController();
  @override
  void dispose() {
    
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(userProvider(userNo)).when(
          data: (data) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      onSubmitted: (value) {
                        setState(() {
                          userNo = value;
                        });
                      },
                      decoration: const InputDecoration(border: OutlineInputBorder()),
                    ),
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
              ),
            );
          },
          error: (err, stack) => Center(child: Text('you got a error my nigga: $err')),
          loading: () => const Center(child:  CircularProgressIndicator())),
    );
  }
}

// class UnderstandingFutureProvider extends ConsumerWidget {
//   const UnderstandingFutureProvider({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Future Provider'),
//           backgroundColor: Colors.lime,
//         ),
//         body: ref.watch(userProvider).when(
//             data: (data) {
//               return Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const TextField(
//                       decoration: InputDecoration(border: OutlineInputBorder()),
//                     ),
//                     Text('Author: ${data.name}'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Author: ${data.email}'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Author: ${data.company}'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Author: ${data.username}'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Author: ${data.phone}'),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text('Author: ${data.website}'),
//                   ],
//                 ),
//               );
//             },
//             error: (err, stack) => Text('you got a error my nigga: $err'),
//             loading: () => const CircularProgressIndicator())
//         // body: ref.watch(streamProvider).when(data: (data) {
//         //   return Center(child: Text(data.toString()));
//         // }, error: (error, stackTrace) {
//         //   return Center(
//         //     child: Text('Got some Error: $error'),
//         //   );
//         // }, loading: () {
//         //   return const Center(
//         //     child: CircularProgressIndicator(),
//         //   );
//         // }),
//         );
//   }
// }

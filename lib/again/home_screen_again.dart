// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hehehehhee/again/providers.dart';

// class HomeScreenAgain extends ConsumerWidget {
//   const HomeScreenAgain({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final textFieldController = ref.watch(textFieldProvider);
//     final userId = int.tryParse(textFieldController.text) ?? 1; // Default to 1 if parsing fails
//     final user = ref.watch(userProvider(userId)); // Get user from provider

//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Home Screen'), // Fixed title
//           centerTitle: true,
//           backgroundColor: Colors.deepPurpleAccent,
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: textFieldController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Enter User ID',
//                 ),
//                 keyboardType: TextInputType.number,
//                 onSubmitted: (_) => ref.refresh(userProvider(userId)), // Refresh provider on submit
//               ),
//               const SizedBox(height: 20),
//               user.when(
//                 data: (user) => Text('User ID: ${user.userId}, Name: ${user.name}'),
//                 loading: () => const CircularProgressIndicator(),
//                 error: (err, stack) => Text('Error: $err'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

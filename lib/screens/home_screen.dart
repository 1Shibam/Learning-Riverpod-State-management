import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/services/services.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final userDatas = ref.watch(userProvider);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Home'),
          centerTitle: true,
        ),
        body: userDatas.when(
            data: (userData) {
              final result = userData.results?.last;
              if (result == null) {
                return const Center(child: Text('No Data Found'));
              }
              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(result.picture?.large ?? ""),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "${result.name?.first ?? ""} ${result.name?.last ?? ""}",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    result.email ?? "No email provided",
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    title: const Text("Gender"),
                    subtitle: Text(result.gender ?? "Not specified"),
                  ),
                  ListTile(
                    title: const Text("Phone"),
                    subtitle: Text(result.phone ?? "Not specified"),
                  ),
                  ListTile(
                    title: const Text("Location"),
                    subtitle: Text(
                      "${result.location?.city ?? ""}, ${result.location?.country ?? ""}",
                    ),
                  ),
                ],
              );
            },
            error: (error, stack) => Center(
                  child: Text('"Error" ${error.toString()}'),
                ),
            loading: () => const CircularProgressIndicator()));
  }
}

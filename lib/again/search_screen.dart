// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hehehehhee/again/search_provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Consumer(
            builder: (context, ref, child) {
              final search = ref.watch(searchProvider);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      obscureText: search.isVisible, // Ensure default value if null
                      onChanged: (value) {
                        ref.read(searchProvider.notifier).search(value);
                      },
                      onSubmitted: (value) {
                        showCustomDialog(context, value);
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Toggle visibility when icon is pressed
                            ref.read(searchProvider.notifier).toggleVisibility();
                          },
                          icon: Icon(
                            search.isVisible == true
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(search.paragraph),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

// Reusable dialog method
void showCustomDialog(BuildContext context, String text) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Okay'))
        ],
        alignment: Alignment.center,
        title: const Text('Your final data'),
        content: Text(text),
      );
    },
  );
}

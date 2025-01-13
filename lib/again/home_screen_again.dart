import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final greetProvider = StateProvider((ref) => 'hello bitch');
final sliderProvider = StateProvider<double>((ref) {
  return 0.00;
});

class HomeScreenAgain extends StatelessWidget {
  const HomeScreenAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) {
                final slide = ref.watch(sliderProvider);
                final greet = ref.watch(greetProvider);
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                        maxLines: 1,
                        autocorrect: true,
                        onSubmitted: (value) {
                          ref.read(greetProvider.notifier).state = value;
                        },
                        decoration: InputDecoration(
                            focusColor: Colors.blue,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 4)),
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 10))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        greet,
                        style: const TextStyle(fontSize: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(slide),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Slider(
                        min: 0.0, // set the minimum value
                        max: 1.0,
                        value: slide,
                        onChanged: (slideValue) {
                          ref.read(sliderProvider.notifier).state = slideValue;
                        },
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

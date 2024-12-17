import 'package:flutter_riverpod/flutter_riverpod.dart';

final currentPageProvider = StateProvider<int>((ref) => 0);

class NumberNotifier extends StateNotifier<List<String>> {
  NumberNotifier(super.state);
  void addString(String something) {
    state = [...state, something];
  }

  void removeString(String something) {
    state = [...state, something];
  }

  void removeAnyString(String number) {
    state = [...state.where((element) => element != number)];
  }

  void updateAnyString() {}
}

final numProvider = StateNotifierProvider<NumberNotifier, List<String>>((ref) {
  return NumberNotifier(['Number 1', 'Number 2']);
});

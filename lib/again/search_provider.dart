import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, List<int> >((ref) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<List<int>>{
  SearchNotifier(): super([12,15,18]);


}
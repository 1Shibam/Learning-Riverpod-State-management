import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(SearchState(paragraph: 'Human desires have no bounds!!'));

  void search(String text) {
    state = state.copyWith(newParagraph: text);
  }
}

class SearchState {
  final String paragraph;
  SearchState({required this.paragraph});

  //copyWith Method
  SearchState copyWith({String? newParagraph}) {
    return SearchState(paragraph: newParagraph ?? paragraph);
  }
}

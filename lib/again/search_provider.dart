import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider = StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(SearchState(paragraph: 'I desire to lick a marvelous Pussy, i mean a Cat, cute one!!'));

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

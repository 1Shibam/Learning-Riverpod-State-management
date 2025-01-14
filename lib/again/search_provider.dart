import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProvider =
    StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier();
});

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier()
      : super(const SearchState(paragraph: '', isVisible: true));

  void search(String text) {
    state = state.copyWith(newParagraph: text);
  }
  void toggleVisibility() {
    // Toggle the isVisible value between true and false.
    state = state.copyWith(setVisibility: !state.isVisible); 
  }
}
@immutable
class SearchState {
  final String paragraph;
  final bool isVisible;
  const SearchState({required this.paragraph, this.isVisible = true});

  //copyWith Method
  SearchState copyWith({String? newParagraph, bool? setVisibility}) {
    return SearchState(paragraph: newParagraph ?? paragraph, isVisible: setVisibility ?? isVisible);
  }
}

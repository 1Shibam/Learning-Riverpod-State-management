import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProvider = StreamProvider((ref) async* {
  yield [
    'niggs',
    'you',
    'better',
    'be',
    'ready',
    'for',
    'those',
    'back',
    'shots',
    'Okayy!!'
  ];
});

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final sliderProvider = StateProvider<SliderState>((ref) {
  return SliderState(slider: 0.00, showPassword: false);
});

class SliderState {
  final double slider;
  final bool showPassword;
  SliderState({
    required this.slider,
    required this.showPassword,
  });
  

  SliderState copyWith({
    double? slider,
    bool? showPassword,
  }) {
    return SliderState(
      slider: slider ?? this.slider,
      showPassword: showPassword ?? this.showPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slider': slider,
      'showPassword': showPassword,
    };
  }

  factory SliderState.fromMap(Map<String, dynamic> map) {
    return SliderState(
      slider: map['slider'] as double,
      showPassword: map['showPassword'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory SliderState.fromJson(String source) => SliderState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SliderState(slider: $slider, showPassword: $showPassword)';

  @override
  bool operator ==(covariant SliderState other) {
    if (identical(this, other)) return true;
  
    return 
      other.slider == slider &&
      other.showPassword == showPassword;
  }

  @override
  int get hashCode => slider.hashCode ^ showPassword.hashCode;
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loader_provider.g.dart';

/// A loader provider that can hold multiple load state
@riverpod
class LoaderState extends _$LoaderState {
  /// Convinient function to hide the loader
  ///
  /// Reads the loader states and removes a single load state
  void hideLoader() {
    // Remove the load state if available
    if (state.isNotEmpty) {
      state = [...state..removeAt(0)];
    }
  }

  /// Convinent function to show the loader
  ///
  /// It adds a single loader state to existing loader states
  void showLoader() {
    state = [...state, null];
  }

  @override
  List<void> build() => [];
}

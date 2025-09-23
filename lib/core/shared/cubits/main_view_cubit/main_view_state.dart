// main_view_state.dart
part of 'main_view_cubit.dart';

class MainViewState extends Equatable {
  final StateStatus status;
  final int selectedTabIndex;
  final String? errorMessage;

  const MainViewState({
    required this.status,
    required this.selectedTabIndex,
    this.errorMessage,
  });

  factory MainViewState.initial() {
    return const MainViewState(
      status: StateStatus.initial,
      selectedTabIndex: 0,
    );
  }

  @override
  List<Object?> get props => [
        status,
        selectedTabIndex,
        errorMessage,
      ];

  MainViewState copyWith({
    StateStatus? status,
    int? selectedTabIndex,
    String? errorMessage,
  }) {
    return MainViewState(
      status: status ?? this.status,
      selectedTabIndex: selectedTabIndex ?? this.selectedTabIndex,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
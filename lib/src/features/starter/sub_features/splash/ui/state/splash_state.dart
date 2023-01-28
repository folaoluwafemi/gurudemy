part of 'splash_cubit.dart';

class SplashState extends BlocState {
  final Failure? error;
  final AppRoute nextRoute;

  const SplashState({
    required this.nextRoute,
    this.error,
  });

  SplashState copyWith({
    final AppRoute? nextRoute,
    final Failure? error,
  }) {
    return SplashState(
      nextRoute: nextRoute ?? this.nextRoute,
      error: error,
    );
  }

  @override
  List<Object?> get props => [error, nextRoute];
}

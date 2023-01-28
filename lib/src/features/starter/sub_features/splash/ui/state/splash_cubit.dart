import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gurudemy/src/global/global_barrel.dart';
import 'package:gurudemy/src/utils/utils_barrel.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> with BlocErrorHandlerMixin {
  SplashCubit() : super(const SplashState(nextRoute: AppRoute.splash));

  Future<void> initialize() => handleError(
        _initialize(),
        catcher: generalErrorHandler,
      );

  Future<void> _initialize() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    //TODO: change
    emit(state.copyWith(nextRoute: AppRoute.onboarding));
  }

  void generalErrorHandler(Failure error) {}
}

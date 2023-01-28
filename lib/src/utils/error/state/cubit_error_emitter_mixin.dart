import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gurudemy/src/utils/utils_barrel.dart';

mixin CubitErrorEmitterMixin<State extends BlocStateWithStatus>
    on Cubit<State> {
  void emitOnError(Failure error) {
    emit(state.copyWith(error: error));
  }
}

import 'package:gurudemy/src/utils/utils_barrel.dart';

abstract class BlocStateWithStatus extends BlocState {
  final bool success;
  final bool loading;
  final Failure? error;

  const BlocStateWithStatus({
    required this.success,
    required this.loading,
    this.error,
  });

  dynamic copyWith({
    bool? success,
    bool? loading,
    Failure? error,
  });
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gurudemy/src/features/features_barrel.dart';

class AppWrapper extends StatelessWidget {
  final Widget child;

  const AppWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      splitScreenMode: false,
      builder: (context, child) => child!,
      child: BlocProvider<SplashCubit>(
        create: (context) => SplashCubit(),
        child: Container(child: child),
      ),
    );
  }
}

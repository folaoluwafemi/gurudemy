import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router_flow/go_router_flow.dart';
import 'package:gurudemy/src/features/features_barrel.dart';
import 'package:gurudemy/src/global/global_barrel.dart';
import 'package:gurudemy/src/utils/constants/assets/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().initialize();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        context.goNamed(state.nextRoute.name);
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          elevation: 0,
          backgroundColor: AppColors.backgroundGrey,
        ),
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: 155.w,
              height: 206.h,
              child: Image.asset(
                Assets.appLogo,
                width: 155.w,
                height: 206.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

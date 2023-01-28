import 'package:flutter/material.dart';
import 'package:gurudemy/src/global/global_barrel.dart';

class GurudemyApp extends StatelessWidget {
  const GurudemyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: MaterialApp.router(
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
        routeInformationParser: AppRouter.router.routeInformationParser,
      ),
    );
  }
}

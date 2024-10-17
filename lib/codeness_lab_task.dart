import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/app_constants.dart';

class CodenessLabTask extends StatelessWidget {
  const CodenessLabTask({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        initialRoute: Routes.taskScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}

import 'package:codeness_lab_task/core/routing/app_router.dart';
import 'package:codeness_lab_task/core/routing/routes.dart';
import 'package:flutter/material.dart';

class CodenessLabTask extends StatelessWidget {
  const CodenessLabTask({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Codeness Lab Task',
      initialRoute: Routes.taskScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}

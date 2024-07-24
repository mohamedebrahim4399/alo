import 'package:alo/common/utils/app_colors.dart';
import 'package:alo/training_flow/presentation/training_flow/training_flow_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class TheApp extends StatelessWidget {
  const TheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          color: AppColors.neutral_0,
          theme: ThemeData(
            primaryColor: AppColors.primary_800,
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle.dark,
            ),
          ),
          title: "alo",
          home: const TrainingFlowPage(),
        );
      },
    );
  }
}

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({
    super.key,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  });
  final String title;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25.h,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue : AppColors.blue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: isSelected
                ? Text(
                    title,
                    style: AppStyle.font12White,
                  )
                : Text(
                    title,
                    style: AppStyle.font12Blue,
                  ),
          ),
        ),
      ),
    );
  }
}

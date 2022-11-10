import 'package:flutter/material.dart';
import 'package:zipense/core/utils/app_styles.dart';
import 'package:zipense/core/utils/size.dart';
import 'package:zipense/core/utils/zipense_icons_icons.dart';
import '../../components/custom_appbar.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 243, 255),
      appBar: CustomAppBar(height: 30.h),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            const Align(alignment: Alignment.centerRight, child: Text('Skip')),
            Expanded(
                child: PageView(
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            )),
            SizedBox(
              height: 150.h,
              child: PageView(
                children: [
                  Column(
                    children: [
                      Text('Know where your money goes',
                          style: TextStyle(
                            fontSize: 25.sp,
                            wordSpacing: -1,
                          )),
                      SizedBox(height: 6.h),
                      const Text(
                        'Track uour transactions easily with categories and financial reports',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Know where your m',
                          style: TextStyle(
                            fontSize: 27.sp,
                            wordSpacing: -1,
                          )),
                      SizedBox(height: 6.h),
                      const Text(
                        'Track uour transactions easily with categories and financial reports',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 56.w,
              width: 56.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: AppColors.primaryColor,
              ),
              child: Icon(
                ZipenseIcons.arrow_forw,
                color: AppColors.white,
                size: 16.sp,
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

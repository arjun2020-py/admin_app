import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff205295),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              height: 100.h,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Companies Registed:',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    Text(
                      '4',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 300.w,
              height: 100.h,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Users Registed:',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    Text(
                      '4',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 300.w,
              height: 100.h,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total Vacancy listed:',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    Text(
                      '4',
                      style: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

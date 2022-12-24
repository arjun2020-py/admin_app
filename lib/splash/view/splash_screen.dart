import 'package:admin/bottomScreen/bottom_screen.dart';
import 'package:admin/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 20), () {
      // ignore: inference_failure_on_instance_creation
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => BottomScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: 300.w,
          height: 300.h,
          child: Lottie.asset(
            'assets/images/42635-office-administration-isometric-concept.json',
          ),
        ),
      ),
    );
  }
}

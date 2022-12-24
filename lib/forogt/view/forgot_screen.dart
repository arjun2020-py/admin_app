import 'package:admin/login/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class ForogtScreen extends StatelessWidget {
  const ForogtScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.r),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xffE5BA73),
                borderRadius: BorderRadius.circular(20)),
            height: 500.h,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'assets/images/108609-forgot-password.json',
                      height: 250.h,
                    ),
                    const Text(
                      'Forgot passwrod',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'enter new  passwrod',
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'confirm passwrod',
                          filled: true,
                          fillColor: Colors.white),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 200.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoignScreen(),
                          ));
                        },
                        child: Text('Submit'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffC58940),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(width: 3, color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

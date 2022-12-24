import 'package:admin/bottomScreen/bottom_screen.dart';
import 'package:admin/forogt/view/forgot_screen.dart';
import 'package:admin/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motion_toast/motion_toast.dart';

class LoignScreen extends StatelessWidget {
  LoignScreen({super.key});

  TextEditingController emailController = TextEditingController(),
      passwrodController = TextEditingController();

  final _logBloc = LoginBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _logBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSucessState) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BottomScreen(),
              ),
            );
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Login Failed')));
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Container(
                  width: 1.sw,
                  height: 1.sh,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff227C70),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'ADMIN',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Image.asset(
                              'assets/images/undraw_programming_2svr_2x-removebg-preview.png',
                              height: 250.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'username',
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.green,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      TextFormField(
                        controller: passwrodController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'passwrod',
                            suffix: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.visibility,
                                color: Colors.green,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        width: 300.w,
                        height: 35.w,
                        child: ElevatedButton(
                          onPressed: () => _logBloc.add(SigininEvent(
                              email: emailController.text,
                              passwrod: passwrodController.text)),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            side:
                                const BorderSide(width: 3, color: Colors.black),
                          ),
                          child: const Text('Login'),
                        ),
                      ),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      Padding(
                          padding: EdgeInsets.only(right: 80.r),
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const ForogtScreen(),
                                ));
                              },
                              child:
                                  const Text('Have you frogot your passwrod?')))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

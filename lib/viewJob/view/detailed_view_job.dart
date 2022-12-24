// ignore: file_names
import 'package:admin/viewJob/view/view_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class detailed_view_job extends StatelessWidget {
  const detailed_view_job({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ViewJob(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0.r),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 260.r),
                  child: const Text('Job Name:'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter job name here',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 250.r),
                  child: const Text('Job Details:'),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter job Detils here',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 220.r),
                  child: const Text('Job Requirement: '),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter job  Requirement here',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 250.r),
                  child: const Text(' Job Criteria: '),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter job  Criteria here',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 250.r),
                  child: const Text(' Job Salary: '),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter job  Salary here',
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  width: 200.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('verified'),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(112, 15, 242, 227),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

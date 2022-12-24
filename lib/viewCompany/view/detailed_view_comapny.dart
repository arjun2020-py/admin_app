import 'package:admin/viewCompany/view_company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetaailedComapnyScreen extends StatelessWidget {
  const DetaailedComapnyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff82AAE3),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              // ignore: inference_failure_on_instance_creation
              MaterialPageRoute(
                builder: (context) => const ViewCompany(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          child: Card(
            // color: Color(0xff91D8E4),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 220.r),
                  child: Text(
                    'Company name:',
                    style: TextStyle(fontSize: 16.r),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 210.r),
                  child: Text(
                    'Company Address:',
                    style: TextStyle(fontSize: 16.r),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 300.r),
                  child: Text(
                    'City:',
                    style: TextStyle(fontSize: 16.r),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 280.r),
                  child: Text(
                    'Contact :',
                    style: TextStyle(fontSize: 16.r),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 100.w,
                      height: 35.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff3A4F7A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: const BorderSide(
                              width: 3, color: Color(0xff91D8E4)),
                        ),
                        child: const Text('Approve'),
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                      height: 35.h,
                    ),
                    SizedBox(
                      width: 100.w,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xffDC0000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: const BorderSide(
                            width: 3,
                            color: Color(0xff850000),
                          ),
                        ),
                        child: const Text('Disapprove'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

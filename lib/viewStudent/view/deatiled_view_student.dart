import 'package:admin/viewStudent/view/view_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedStudent extends StatelessWidget {
  const DetailedStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ViewStudent(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 260.r),
                child: const Text(
                  'SSLC %:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter % here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 260.r),
                child: const Text(
                  'SSLC YEAR:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter year here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 240.r),
                child: const Text(
                  'SSLC BOARD:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter board here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 240.r),
                child: const Text(
                  'PLUS TWO %:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter % here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 220.r),
                child: const Text(
                  'PLUS TWO YEAR:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter year here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 220.r),
                child: const Text(
                  'PLUS TWO BOARD:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter board here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                thickness: 3,
              ),
              Padding(
                padding: EdgeInsets.only(right: 240.r),
                child: const Text(
                  'DGREE %:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter % here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 220.r),
                child: const Text(
                  'DGREE YEAR:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter year here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 220.r),
                child: const Text(
                  'DGREE BOARD:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.h),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Enter board here',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Approved')),
                  ElevatedButton(onPressed: () {}, child: Text('Disapproved'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

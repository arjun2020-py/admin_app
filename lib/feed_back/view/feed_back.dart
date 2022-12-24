import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff205295),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15.0.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 120.r),
                child: Center(
                  child: Text(
                    'Write your query here...',
                    style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 150.h,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
                  child: TextFormField(
                    expands: true,
                    maxLines: null,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Please describe your issue',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Fire query'),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

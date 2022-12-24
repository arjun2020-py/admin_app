import 'package:admin/bottomScreen/bottom_screen.dart';
import 'package:admin/viewStudent/view/deatiled_view_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewStudent extends StatelessWidget {
  const ViewStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BottomScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('View Student Deatils'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            // ignore: inference_failure_on_instance_creation
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DetailedStudent(),
              ),
            ),
            child: Card(
              child: ListTile(
                title: const Text('Student Name'),
                subtitle: const Text('admin'),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DetailedStudent(),
                      ),
                    );
                  },
                  child: const Text('view'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:admin/bottomScreen/bottom_screen.dart';
import 'package:admin/viewCompany/view_company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewCompany extends StatelessWidget {
  const ViewCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const BottomScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: const Text('View Company Details '),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DetaailedComapnyScreen(),
              ),
            ),
            child: const Card(
              child: ListTile(
                title: Text('Company Name'),
                subtitle: Text('SEEROO IT SOLUTIONS.'),
                trailing: Text(
                  'View',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

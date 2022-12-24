import 'package:admin/bottomScreen/bottom_screen.dart';
import 'package:admin/viewJob/view/detailed_view_job.dart';
import 'package:flutter/material.dart';

class ViewJob extends StatelessWidget {
  const ViewJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BottomScreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('View Job post'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detailed_view_job(),
                  ));
            },
            child: Card(
              child: ListTile(
                title: const Text('Job Name'),
                subtitle: const Text('Flutter developer'),
                trailing: TextButton(
                  onPressed: () {},
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

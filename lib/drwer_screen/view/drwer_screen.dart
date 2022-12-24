import 'package:admin/viewCompany/view/view_compnay.dart';
import 'package:admin/viewJob/view/view_job.dart';
import 'package:admin/viewStudent/view_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffF1F6F5),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('admin'),
            accountEmail: const Text('admin@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Stack(
                  children: [
                    Image.network(
                      'https://www.pngmart.com/files/21/Admin-Profile-Vector-PNG-Clipart.png',
                      width: 200.w,
                      height: 100.h,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.r, left: 25.r),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: const BoxDecoration(color: Colors.purple),
          ),
          // ListTile(
          //   leading: const Icon(
          //     Icons.person,
          //     color: Colors.black,
          //   ),
          //   title: const Text('My account'),
          //   onTap: () {},
          //   trailing: IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       Icons.navigate_next,
          //       size: 30.r,
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.building,
              color: Colors.black,
            ),
            title: const Text(
              'View Comapny Approved',
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ViewCompany(),
                ),
              );
            },
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.graduationCap,
              color: Colors.black,
            ),
            title: const Text('View Student Approved'),
            onTap: () {
              // ignore: inference_failure_on_instance_creation
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ViewStudent(),
                ),
              );
            },
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.listCheck,
              color: Colors.black,
            ),
            title: const Text('View Job Post'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ViewJob(),
              ));
            },
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ViewJob(),
                ));
              },
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.help,
              color: Colors.black,
            ),
            title: const Text('About Us'),
            onTap: () {},
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.contact_phone_outlined,
              color: Colors.black,
            ),
            title: const Text('Contact Us'),
            onTap: () {},
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: const Text('Setting'),
            onTap: () {},
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
            title: const Text('Logout'),
            onTap: () {},
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                size: 30.r,
                color: Colors.black,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

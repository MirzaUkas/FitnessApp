import 'package:fitness_app/ui/home/home_page.dart';
import 'package:fitness_app/ui/profile/profile_page.dart';
import 'package:fitness_app/ui/tracker/progress_tracker_page.dart';
import 'package:fitness_app/ui/workout/workout_tracker_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../common/colors.dart';

class DashboardPage extends StatefulWidget {
  static const route = '/dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedPage = 0;
  final _pageOptions = [
    HomePage(),
    WorkoutTrackerPage(),
    ProgressTrackerPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/ic_home.svg'),
            activeIcon: SvgPicture.asset('assets/images/ic_home_active.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: SvgPicture.asset('assets/images/ic_activity.svg'),
            ),
            activeIcon:
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: SvgPicture.asset('assets/images/ic_activity_active.svg'),
                ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SvgPicture.asset('assets/images/ic_camera.svg'),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SvgPicture.asset('assets/images/ic_camera_active.svg'),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/ic_profile.svg'),
            activeIcon: SvgPicture.asset('assets/images/ic_profile_active.svg'),
            label: '',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () =>  Fluttertoast.showToast(
              msg: "Fitur Belum Tersedia",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: AppColor.colorPurpleFD,
              textColor: Colors.white,
              fontSize: 16.0),
          child: Container(
            width: 60,
            height: 60,
            child: SvgPicture.asset(
              'assets/images/ic_search.svg',
              fit: BoxFit.scaleDown,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [AppColor.colorPurpleFD, AppColor.colorBlueFF])),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

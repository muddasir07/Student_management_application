import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_master/screens/assignment_screen/assignment_screen.dart';
import 'package:school_master/screens/attendance/attendance.dart';
import 'package:school_master/screens/datesheet_screen/datesheet_screen.dart';
import 'package:school_master/screens/fee_screen/fee_screen.dart';
import 'package:school_master/screens/my_profile/my_profile.dart';
import 'package:school_master/services/constants.dart';
import 'package:school_master/services/images.dart';
import 'package:sizer/sizer.dart';
import 'widgets/student_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 100.w,
              height: 35.h,
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          StudentName(
                            studentName: 'Muddasir Shabbir',
                          ),
                          kHalfSizedBox,
                          StudentClass(
                              studentClass: 'Class XII A | Roll no: 07'),
                          kHalfSizedBox,
                          StudentYear(studentYear: '2023-2024'),
                        ],
                      ),
                      kHalfSizedBox,
                      StudentPicture(
                          pictureWidget: SvgPicture.asset(
                            DefaultImages.login,
                            height: 90,
                          ),
                          onPress: () {
                            Navigator.pushNamed(
                                context, MyProfileScreen.routeName);
                          }),
                    ],
                  ),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StudentDataCard(
                        onPress: () {
                          Navigator.pushNamed(
                              context, AttendanceScreen.routeName);
                        },
                        title: 'Attendance',
                        value: '90.02%',
                      ),
                      StudentDataCard(
                        onPress: () {
                          Navigator.pushNamed(context, FeeScreen.routeName);
                        },
                        title: 'Fees Due',
                        value: '2500',
                      ),
                    ],
                  )
                ],
              ),
            ),

            //other will use all the remaining height of screen
            Expanded(
              child: Container(
                width: 100.w,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: kTopBorderRadius,
                ),
                child: SingleChildScrollView(
                  //for padding
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/quiz.svg',
                            title: 'Take Quiz',
                          ),
                          HomeCard(
                            onPress: () {
                              //go to assignment screen here
                              Navigator.pushNamed(
                                  context, AssignmentScreen.routeName);
                            },
                            icon: 'assets/icons/assignment.svg',
                            title: 'Assignments',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/holiday.svg',
                            title: 'Holidays',
                          ),
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/timetable.svg',
                            title: 'Time Table',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/result.svg',
                            title: 'Result',
                          ),
                          HomeCard(
                            onPress: () {
                              Navigator.pushNamed(
                                  context, DateSheetScreen.routeName);
                            },
                            icon: 'assets/icons/datesheet.svg',
                            title: 'DateSheet',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/ask.svg',
                            title: 'Ask',
                          ),
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/gallery.svg',
                            title: 'Gallery',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/resume.svg',
                            title: 'Leave\nApplication',
                          ),
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/lock.svg',
                            title: 'Change\nPassword',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/event.svg',
                            title: 'Events',
                          ),
                          HomeCard(
                            onPress: () {},
                            icon: 'assets/icons/logout.svg',
                            title: 'Logout',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 2.h),
        width: 36.w,
        height: 18.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: SizerUtil.deviceType == DeviceType.tablet ? 30.sp : 20.sp,
              width: SizerUtil.deviceType == DeviceType.tablet ? 30.sp : 40.sp,
              color: kOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:school_master/screens/attendance/data/attemdance_data.dart';
import 'package:school_master/screens/attendance/widgets/attendance_widgets.dart';
import 'package:school_master/services/constants.dart';


class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);
  static String routeName = 'AttendanceScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: kTopBorderRadius,
                color: kOtherColor,
              ),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(kDefaultPadding),
                itemCount: attendance.length, // assuming attendance is a list of attendance records
                itemBuilder: (context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: kDefaultPadding),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(kDefaultPadding),
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kTextLightColor,
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              AttendanceDetailRow(
                                date: attendance[index].date,
                                status: attendance[index].status,
                              ),
                              const SizedBox(
                                height: kDefaultPadding,
                                child: Divider(
                                  thickness: 1.0,
                                ),
                              ),
                              // You can add more attendance details here if needed
                            ],
                          ),
                        ),
                        AttendanceButton(
                          title: 'View Details', // Button title
                          iconData: Icons.arrow_forward_outlined, // Button icon
                          onPress: () {
                            // Handle button press, e.g., navigate to detail screen
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

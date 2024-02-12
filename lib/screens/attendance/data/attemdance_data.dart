class AttendanceData {
  final String date;
  final String status;

  AttendanceData({
    required this.date,
    required this.status,
  });
}

// Example list of attendance data
List<AttendanceData> attendance = [
  AttendanceData(date: '2024-02-01', status: 'Present'),
  AttendanceData(date: '2024-02-02', status: 'Absent'),
  AttendanceData(date: '2024-02-03', status: 'Present'),
  AttendanceData(date: '2024-02-04', status: 'Present'),
  // Add more attendance records as needed
];

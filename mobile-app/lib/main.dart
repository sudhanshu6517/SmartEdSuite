// lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const SmartEdSuiteApp());
}

class SmartEdSuiteApp extends StatelessWidget {
  const SmartEdSuiteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartEdSuite',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _attendanceStreak = 14;
  double _progress = 0.65;

  void _markAttendance() {
    setState(() {
      _attendanceStreak += 1;
      _progress += 0.02;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("✅ Attendance marked! 🔥 Streak: 15 days")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SmartEdSuite"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Student!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              color: Colors.indigo[50],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("🔥 Streak", style: TextStyle(fontSize: 16)),
                        Text("14 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: _markAttendance,
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.indigo),
                      child: const Text("Mark Attendance"),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Your Progress", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            LinearProgressIndicator(value: _progress),
            const Text("65% syllabus completed"),
          ],
        ),
      ),
    );
  }
}
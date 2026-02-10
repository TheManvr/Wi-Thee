import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/driver_provider.dart';
import '../widgets/absence_list_tile.dart';

class DriverDashboardScreen extends StatelessWidget {
  const DriverDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DriverProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Driver Dashboard'),
      ),
      body: ListView.builder(
        itemCount: provider.students.length,
        itemBuilder: (context, index) {
          final student = provider.students[index];
          return AbsenceListTile(
            studentName: student.name,
            isAbsent: student.isAbsent,
            onTap: () => provider.toggleStudentAbsence(student.id),
          );
        },
      ),
    );
  }
}

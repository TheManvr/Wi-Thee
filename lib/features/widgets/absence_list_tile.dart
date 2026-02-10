import 'package:flutter/material.dart';

class AbsenceListTile extends StatelessWidget {
  final String studentName;
  final bool isAbsent;
  final VoidCallback onTap;

  const AbsenceListTile({
    Key? key,
    required this.studentName,
    required this.isAbsent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(studentName),
      trailing: Icon(
        isAbsent ? Icons.check_box_outline_blank : Icons.check_box,
        color: isAbsent ? Colors.grey : Colors.green,
      ),
      onTap: onTap,
    );
  }
}

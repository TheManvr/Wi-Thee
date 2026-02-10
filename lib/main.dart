import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/providers/driver_provider.dart';
import 'features/screens/driver_dashboard_screen.dart';

void main() {
  runApp(const WiTheeApp());
}

class WiTheeApp extends StatelessWidget {
  const WiTheeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wi-Thee',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ChangeNotifierProvider(
        create: (_) => DriverProvider(),
        child: const DriverDashboardScreen(),
      ),
    );
  }
}

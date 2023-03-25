import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:dicoding_simple_android_alarm_manager/ui/home_page.dart';
import 'package:dicoding_simple_android_alarm_manager/utils/background_service.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  BackgroundService().initializeIsolate();

  await AndroidAlarmManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const title = 'Simple Alarm Manager';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(title: title),
    );
  }
}

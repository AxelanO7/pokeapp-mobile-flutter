import 'package:flutter/material.dart';
import 'package:pokeapp/core/di/service_locator.dart';
import 'package:pokeapp/features/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MainApp());
}

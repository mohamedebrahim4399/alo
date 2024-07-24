import 'package:alo/app.dart';
import 'package:alo/common/di/dependencies.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  runApp(const TheApp());
}

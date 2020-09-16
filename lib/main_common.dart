import 'package:environments_with_codemagic/app_widget.dart';
import 'package:environments_with_codemagic/config_reader.dart';
import 'package:environments_with_codemagic/environment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env){
    case Environment.dev:
    primaryColor = Colors.blue;
    break;
    case Environment.prod:
    primaryColor = Colors.red;
    break;
  }
  // value = instantiate a new one and then later dispose of it so that's the perfect use 
  runApp(Provider.value(
    value: primaryColor,
    child: MyApp()));

}
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:training_project/alarm.dart';
import 'package:training_project/resetPassMsg.dart';
import 'package:training_project/selectHelp.dart';
import 'package:training_project/waiting.dart';
import 'setting.dart';
import 'signup.dart';
import 'info.dart';
import 'setting.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'nav.dart';
import 'generalHome.dart';
import 'login.dart';
import 'selectHelp.dart';
import 'confirm.dart';
import 'alarmInfo.dart';
import 'nav2.dart';
import 'securitySetting.dart';
import 'selectHelp.dart';
import 'waiting.dart';
import 'resetPassMsg.dart';
import 'alarm.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context)=>MyApp(),
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      //locale: Locale("ar", "AE"),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      //home: alarmInfo(),
      home: nav(),
      //home: setting(),
      //home: signup(),
      //home: info(),
      //home: generalHome(),
      //home: login(),
      //home: selectHelp(),
      //home: confirm(),
      //home: nav2(),
      //home: securitySetting(),
      //home: selectHelp(),
      //home: waiting(),
      //home: resetPassMsg(),
      //home: alarm(),


    );
  }
}

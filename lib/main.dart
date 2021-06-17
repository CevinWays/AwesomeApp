import 'package:awesome_app/helper/constant_helper.dart';
import 'package:awesome_app/helper/dio_helper.dart';
import 'package:awesome_app/helper/secpref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main_app.dart';

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// INFO : init SharedPref
  SecprefHelper.sharedPreferences = await SharedPreferences.getInstance();

  /// INFO : Prepare dio
  DioHelper.initDio(ConstantHelper.BASE_URL);
  DioHelper.setDioHeader(ConstantHelper.API_TOKEN);
  DioHelper.setDioInterceptor(ConstantHelper.BASE_URL);

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MainApp());
}
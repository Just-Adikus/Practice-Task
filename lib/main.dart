import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_7/bloc/register_cubit.dart';
import 'package:practice_7/views/register_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
 runApp(EasyLocalization(
  supportedLocales: [Locale('kk'), Locale('en')],
  path: 'assets/translations',
  fallbackLocale: Locale('kk'),
  child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: MaterialApp(
        home: RegisterScreen(),
      ),
    );
  }
}
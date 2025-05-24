import 'package:converter/controller/app_cubit.dart';
import 'package:converter/core/utils/theme.dart';
import 'package:converter/ui/app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'operations/get_screen_parts_size.dart';

class StartingPointApp extends StatelessWidget {
  const StartingPointApp({super.key});

  @override
  Widget build(BuildContext context) {
    getScreenPartsSize(context);
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenApp(),
        theme: createAppTheme(context),
      ),
    );
  }
}

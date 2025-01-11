import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/connectivity/cubit/internet_cubit.dart';
import 'core/theme/theme_manager.dart';
import 'modules/auth/view/login_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? initialRoute;
  @override
  void initState() {
    super.initState();
    _handleInitialRoute();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode?>(
        valueListenable: AppThemes.instance.themeNotifier,
        builder: (context, themeMode, child) {
          ThemeData currentTheme = AppThemes.lightAppTheme(context);
          if (themeMode == ThemeMode.dark) {
            currentTheme = AppThemes.darkAppTheme(context);
          } else {
            currentTheme = AppThemes.lightAppTheme(context);
          }
          return BlocProvider(
            create: (context) => InternetCubit()..monitoringInternetState(),
            child: MaterialApp(
              navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              title: 'Zaher',
              locale: context.locale,
              themeMode: themeMode,
              theme: currentTheme,
              darkTheme: AppThemes.darkAppTheme(context),
              home: const LoginPage(),
              
            ),
          );
        });
  }

  void _handleInitialRoute() async {
    // If it null value, it means it's the first time the user runs the app.
    // final bool firstLaunch =
    //     CacheHelper.getData(key: SharedPrefKeys.firstLaunch) ?? true;
  }
}

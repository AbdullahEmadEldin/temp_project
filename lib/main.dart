import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app_enrty.dart';
import 'core/constants.dart';
import 'core/lang_manager.dart';
import 'core/services/cache/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Init shared preferences
  await CacheHelper.init();

  ///

  /// EasyLocalization Initialization.
  await EasyLocalization.ensureInitialized();

  /// Get App Lang from cache.
  final String startLocale = await LanguageManager.getAppLang();
// String.fr
  runApp(
    EasyLocalization(
      startLocale: Locale(startLocale),
      supportedLocales: [
        Locale(LanguageType.english.code),
        Locale(LanguageType.arabic.code)
      ],
      path: AppConstants.translationsPath,
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

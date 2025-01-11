import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/app_strings.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () async{
          await launchUrl(Uri.parse('https://vendor.zaher.io/auth/forgot-password'));
        },
        child: Text(
          LocalizationKeys.forgotPassword.tr(),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline,
                decorationColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.7),
              ),
        ),
      ),
    );
  }
}

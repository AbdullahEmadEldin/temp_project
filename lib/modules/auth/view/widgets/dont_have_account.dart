import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/app_strings.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: LocalizationKeys.noAccountQuestion.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            TextSpan(
              text: LocalizationKeys.registerLink.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: Theme.of(context).colorScheme.primary),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  await launchUrl(
                      Uri.parse('https://zaher.io/auth/register?tab=vendor'));
                },
            ),
          ],
        ),
      ),
    );
  }
}

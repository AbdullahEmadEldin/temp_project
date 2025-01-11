import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:temp_project/core/helpers/extensions.dart';
import 'package:temp_project/core/widgets/main_app_button.dart';

import '../../../core/constants/app_strings.dart';
import 'components/login_form.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/forgot_password.dart';
import 'widgets/sign_with_google.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 32.0.responsive(context),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 130.0.responsive(context)),
              Text(
                LocalizationKeys.loginTitle.tr(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              SizedBox(height: 40.0.responsive(context)),
              const SignWithGoogleButton(),
              SizedBox(height: 24.0.responsive(context)),
              Text(
                LocalizationKeys.orLoginWith.tr(),
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.surfaceDim,
                    ),
              ),
              SizedBox(height: 16.0.responsive(context)),
              const LoginForm(),
              SizedBox(height: 8.0.responsive(context)),
              const ForgotPassword(),
              SizedBox(height: 24.0.responsive(context)),
              MainButton(
                buttonText: LocalizationKeys.loginButton.tr(),
                textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                onPressed: () {},
              ),
              SizedBox(height: 24.0.responsive(context)),
              const DontHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }
}

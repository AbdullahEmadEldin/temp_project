import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temp_project/core/helpers/extensions.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/input_field.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! ======== Email ========
            Text(
              'LocalizationKeys.emailLabel.tr()',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            SizedBox(height: 9.0.responsive(context)),
            InputField(
              controller: context.read<LoginCubit>().emailController,
              hintText: 'LocalizationKeys.emailPlaceholder.tr()',
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'LocalizationKeys.enterValidEmail.tr()';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0.responsive(context)),
            //! ======== password ========
            Text(
              'LocalizationKeys.passwordLabel.tr()',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            SizedBox(height: 9.0.responsive(context)),
            InputField(
              controller: context.read<LoginCubit>().passwordController,
              hintText: '***************',
              obscureText: !isObscureText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                icon: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'LocalizationKeys.enterValidPassword.tr()';
                }
                return null;
              },
            ),
          ],
        ));
  }
}

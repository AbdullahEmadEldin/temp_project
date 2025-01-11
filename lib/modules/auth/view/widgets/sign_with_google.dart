import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:temp_project/core/helpers/extensions.dart';

import '../../../../core/constants/app_strings.dart';
import '../../logic/cubit/login_cubit.dart';

class SignWithGoogleButton extends StatelessWidget {
  const SignWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6.0.responsive(context)),
      onTap: () {
        context.read<LoginCubit>().googleLogin();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 16.0.responsive(context),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0.responsive(context)),
            color: Theme.of(context).colorScheme.primaryContainer,
            border: Border.all(
              width: 0.5,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LocalizationKeys.loginWithGoogle.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            SizedBox(width: 16.0.responsive(context)),
            // SvgPicture.asset('assets/svg/google.svg'),
          ],
        ),
      ),
    );
  }
}

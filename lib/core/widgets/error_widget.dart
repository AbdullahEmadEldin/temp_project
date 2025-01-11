import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ErrorCustomWidget extends StatelessWidget {
  final String? errorMsg;
  final double size;
  const ErrorCustomWidget({super.key, this.errorMsg, this.size = 48.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.exclamationmark_circle,
              size: size,
              color: Colors.red,
            ),
            const SizedBox(height: 12.0),
            Text(
              errorMsg ?? 'LocalizationKeys.error.tr()',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

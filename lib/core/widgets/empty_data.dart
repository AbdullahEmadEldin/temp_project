import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyData extends StatelessWidget {
  final double? height;
  final double? textSize;
  final String? text;
  const EmptyData({
    super.key,
    this.text,
    this.height = 64,
    this.textSize = 16,
  });

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
              CupertinoIcons.nosign,
              size: height,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 8.0),
            Text(
              text ?? 'لا توجد بيانات',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: textSize,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

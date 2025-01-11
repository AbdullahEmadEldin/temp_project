import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'dart:ui' as ui;

import 'package:temp_project/core/helpers/extensions.dart';


class HeaderShimmer extends StatelessWidget {
  const HeaderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Padding(
      
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Shimmer(
              duration: const Duration(seconds: 1),
              color: Colors.grey.shade400,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(32)),
                height: 32.0.responsive(context),
                width: 32.0.responsive(context),
              ),
            ),
            SizedBox(width: 16.0.responsive(context)),
            Column(children: [
              Shimmer(
                duration: const Duration(seconds: 1),
                color: Colors.grey.shade400,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(32)),
                  height: 16.0.responsive(context),
                  width: 90.0.responsive(context),
                ),
              ),
            SizedBox(height: 16.0.responsive(context)),
              Shimmer(
                duration: const Duration(seconds: 1),
                color: Colors.grey.shade400,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(32)),
                  height: 16.0.responsive(context),
                  width: 70.0.responsive(context),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

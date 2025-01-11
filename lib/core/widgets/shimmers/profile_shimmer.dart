import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:temp_project/core/helpers/extensions.dart';

class ProfileShimmer extends StatelessWidget {
  const ProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer(
          duration: const Duration(seconds: 1),
          color: Colors.grey.shade400,
          child: Container(
            height: 72.0.responsive(context),
            width: 72.0.responsive(context),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(64.0.responsive(context)),
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        Shimmer(
          duration: const Duration(seconds: 1),
          color: Colors.grey.shade400,
          child: Container(
            height: 20.0.responsive(context),
            width: 72.0.responsive(context),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(32.0.responsive(context)),
            ),
          ),
        ),
      ],
    );
  }
}

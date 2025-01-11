import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class DataShimmer extends StatelessWidget {
  final int itemCount;
  final double height;
  const DataShimmer({
    super.key,
    this.itemCount = 4,
    this.height = 120.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          itemCount,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Shimmer(
              duration: const Duration(seconds: 1),
              color: Colors.grey.shade400,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(12)),
                height: height,
                width: double.infinity,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

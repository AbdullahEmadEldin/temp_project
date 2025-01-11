import 'package:flutter/material.dart';
import 'package:temp_project/core/helpers/extensions.dart';

class TabBarItem extends StatelessWidget {
  final String title;
  final bool selected;
  const TabBarItem({
    super.key,
    required this.title,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.responsive(context),
        vertical: 6.0.responsive(context),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          width: 2,
          color: !selected
              ? Theme.of(context).colorScheme.primaryContainer
              : Colors.transparent,
        ),
        color: selected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).brightness == Brightness.light
                ? Theme.of(context).colorScheme.primaryContainer
                : Colors.transparent,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: selected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurface,
            ),
      ),
    );
  }
}

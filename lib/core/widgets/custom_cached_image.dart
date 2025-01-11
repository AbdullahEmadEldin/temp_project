import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temp_project/core/helpers/extensions.dart';

class CustomProfileCachedImage extends StatelessWidget {
  final String? imageUrl;
  final double? radius;

  const CustomProfileCachedImage({
    super.key,
    this.radius,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedRadius = radius ?? 22.0.responsive(context);

    return SizedBox(
      width: resolvedRadius * 2,
      height: resolvedRadius * 2,
      child: ClipOval(
        child: imageUrl.isNullOrEmpty()
            ? Image.asset(
                'ImageAssets.picHolder',
                fit: BoxFit.cover,
              )
            : CachedNetworkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Image.asset(
                  'ImageAssets.picHolder',
                  fit: BoxFit.cover,
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'ImageAssets.picHolder',
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}

class ProductCustomCachedImage extends StatelessWidget {
  final String? imageUrl;
  final double? radius;

  const ProductCustomCachedImage({
    super.key,
    this.radius,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedRadius = radius ?? 22.0.responsive(context);

    return SizedBox(
      width: resolvedRadius * 2,
      height: resolvedRadius * 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: imageUrl.isNullOrEmpty()
            ? Image.asset(
                'ImageAssets.splashLogo',
                fit: BoxFit.cover,
              )
            : CachedNetworkImage(
                imageUrl: imageUrl!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Image.asset(
                  'ImageAssets.splashLogo',
                  fit: BoxFit.cover,
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'ImageAssets.splashLogo',
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}

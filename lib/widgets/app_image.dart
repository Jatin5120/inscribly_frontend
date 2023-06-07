import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';

class AppImage extends StatelessWidget {
  const AppImage(
    this.imageUrl, {
    super.key,
    this.dimension,
    this.height,
    this.width,
  });

  final String imageUrl;
  final double? dimension;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) => Hero(
        tag: imageUrl.isEmpty ? UniqueKey() : imageUrl,
        child: SizedBox(
          height: height ?? dimension ?? AppDimens.twentyFour,
          width: width ?? dimension ?? AppDimens.twentyFour,
          child: imageUrl.isEmpty
              ? const _ErrorImage()
              : imageUrl.isSvg
                  ? _SvgImage(imageUrl)
                  : imageUrl.isValidUrl
                      ? _NetworkImage(imageUrl)
                      : _AssetImage(imageUrl),
        ),
      );
}

class _AssetImage extends StatelessWidget {
  const _AssetImage(this.imageUrl);

  final String imageUrl;

  @override
  Widget build(BuildContext context) => Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      );
}

class _NetworkImage extends StatelessWidget {
  const _NetworkImage(this.imageUrl);

  final String imageUrl;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        key: Key(imageUrl),
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        errorWidget: (_, url, error) {
          AppLog.error('ImageError - $url\n$error');
          return const _ErrorImage();
        },
      );
}

class _SvgImage extends StatelessWidget {
  const _SvgImage(this.imageUrl);

  final String imageUrl;

  @override
  Widget build(BuildContext context) => imageUrl.isValidUrl
      ? SvgPicture.network(
          imageUrl,
          fit: BoxFit.cover,
        )
      : SvgPicture.asset(
          imageUrl,
          fit: BoxFit.cover,
        );
}

class _ErrorImage extends StatelessWidget {
  const _ErrorImage();

  @override
  Widget build(BuildContext context) => const Placeholder();
}

import 'package:flutter/material.dart';
import 'package:inscribly/res/res.dart';
import 'package:inscribly/utilities/utilities.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  }) : _buttonType = ButtonType.primary;

  const Button.secondary({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  }) : _buttonType = ButtonType.secondary;

  const Button.outlined({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  }) : _buttonType = ButtonType.outlined;

  const Button.text({
    super.key,
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  }) : _buttonType = ButtonType.text;

  final String label;
  final IconData? iconData;
  final Widget? icon;
  final VoidCallback? onTap;

  final ButtonType _buttonType;

  @override
  Widget build(BuildContext context) {
    switch (_buttonType) {
      case ButtonType.primary:
        return _PrimaryButton(
          label: label,
          onTap: onTap,
          icon: icon,
          iconData: iconData,
        );
      case ButtonType.secondary:
        return _SecondaryButton(
          label: label,
          onTap: onTap,
          icon: icon,
          iconData: iconData,
        );
      case ButtonType.outlined:
        return _OutlinedButton(
          label: label,
          onTap: onTap,
          icon: icon,
          iconData: iconData,
        );
      case ButtonType.text:
        return _TextButton(
          label: label,
          onTap: onTap,
          icon: icon,
          iconData: iconData,
        );
    }
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  });

  final String label;
  final IconData? iconData;
  final Widget? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var style = ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      elevation: AppDimens.eight,
      foregroundColor: AppColors.textDark,
    );
    if (icon != null || iconData != null) {
      return ElevatedButton.icon(
        onPressed: onTap,
        style: style,
        icon: icon ?? Icon(iconData),
        label: Text(label),
      );
    }
    return ElevatedButton(
      onPressed: onTap,
      style: style,
      child: Text(label),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  const _SecondaryButton({
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  });

  final String label;
  final IconData? iconData;
  final Widget? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => const Placeholder();
}

class _OutlinedButton extends StatelessWidget {
  const _OutlinedButton({
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  });

  final String label;
  final IconData? iconData;
  final Widget? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => const Placeholder();
}

class _TextButton extends StatelessWidget {
  const _TextButton({
    required this.label,
    required this.onTap,
    this.icon,
    this.iconData,
  });

  final String label;
  final IconData? iconData;
  final Widget? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (icon != null || iconData != null) {
      return TextButton.icon(
        onPressed: onTap,
        icon: icon ?? Icon(iconData),
        label: Text(label),
      );
    }
    return TextButton(
      onPressed: onTap,
      child: Text(label),
    );
  }
}

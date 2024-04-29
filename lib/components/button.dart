import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class MeTimeButton extends StatefulWidget {
  final double? height;
  final double? width;

  final bool? primary;
  final bool? secondary;

  final String? text;
  final double? textSize;

  final bool? useItalic;

  final VoidCallback? onPressed;
  final Widget? child;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;

  final Color? borderColor;
  final double? borderWidth;

  const MeTimeButton({
    super.key,
    required this.onPressed,
    this.child,
    this.borderRadius,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.width,
    this.primary,
    this.secondary,
    this.text,
    this.useItalic,
    this.textSize,
    this.borderColor,
    this.borderWidth,
  });

  @override
  _MeTimeButtonState createState() => _MeTimeButtonState();
}

class _MeTimeButtonState extends State<MeTimeButton> {
  @override
  Widget build(BuildContext context) {
    Color? textColor = widget.textColor;
    Color? backgroundColor = widget.backgroundColor;

    if (textColor == null && (widget.primary ?? false)) {
      textColor = MeTimeColors.white;
    }
    if (backgroundColor == null && (widget.primary ?? false)) {
      backgroundColor = MeTimeColors.pinkPrimary;
    }
    if (textColor == null && (widget.secondary ?? false)) {
      textColor = MeTimeColors.pinkPrimary;
    }
    if (backgroundColor == null && (widget.secondary ?? false)) {
      backgroundColor = MeTimeColors.white;
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? MeTimeColors.pinkPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(10),
            side: BorderSide(
              color: widget.borderColor ?? Colors.transparent,
              width: widget.borderWidth ?? 1.0,
            ),
          ),
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: widget.textSize ?? 18,
            decoration:
                widget.useItalic != null ? TextDecoration.underline : null,
            decorationColor:
                widget.useItalic != null ? MeTimeColors.pinkPrimary : null,
          ),
          child: widget.text != null ? Text(widget.text!) : widget.child!,
        ),
      ),
    );
  }
}

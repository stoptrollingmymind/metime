import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class MeTimeTextField extends StatefulWidget {
  final String? label;
  final String? hint;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Widget? postfix;
  final bool? sensitive;

  const MeTimeTextField(
      {Key? key,
      this.label,
      this.labelStyle,
      this.hint,
      this.hintStyle,
      this.postfix,
      this.sensitive})
      : super(key: key);

  @override
  _MeTimeTextFieldState createState() => _MeTimeTextFieldState();
}

class _MeTimeTextFieldState extends State<MeTimeTextField> {
  bool _isMasked = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) Text(widget.label!, style: widget.labelStyle),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                obscureText: _isMasked,
                decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: widget.hintStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: MeTimeColors.blackPrimary,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: MeTimeColors.pinkPrimary,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 20.0,
                  ),
                  suffixIcon: widget.sensitive == true
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              _isMasked = !_isMasked;
                            });
                          },
                          icon: Icon(_isMasked
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )
                      : widget.postfix,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

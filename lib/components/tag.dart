import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class MeTimeTag extends StatefulWidget {
  final String text;
  final Function(bool)? onTap;

  final bool? highlighted;

  const MeTimeTag({
    Key? key,
    required this.text,
    this.highlighted,
    this.onTap
  }) : super(key: key);

  @override
  _MeTimeTagState createState() => _MeTimeTagState();
}

class _MeTimeTagState extends State<MeTimeTag> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: _isTapped ? MeTimeColors.pinkPrimary : MeTimeColors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            style: BorderStyle.solid,
            width: 1,
            color: _isTapped ? MeTimeColors.pinkPrimary : MeTimeColors
                .blackTernary,
          ),
        ),
        child: Text(
          widget.text,
          style: Theme
              .of(context)
              .textTheme
              .labelMedium,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _isTapped = widget.highlighted ?? false;
  }
}

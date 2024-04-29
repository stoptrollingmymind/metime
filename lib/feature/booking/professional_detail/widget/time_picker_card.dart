import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class TimePickerCard extends StatefulWidget {
  final String time;
  final String id;
  final String? withPro;
  final bool useProLabel;
  final void Function(String, VoidCallback)? onPressed;
  VoidCallback? unhighlight;

  TimePickerCard(
      {super.key,
      required this.time,
      this.onPressed,
      required this.id,
      this.withPro,
      required this.useProLabel});

  @override
  _TimePickerCardState createState() => _TimePickerCardState();
}

class _TimePickerCardState extends State<TimePickerCard> {
  Color _borderColor = MeTimeColors.stroke;
  Color _textColor = MeTimeColors.blackTernary;

  void _handleCardTap() {
    setState(() {
      _borderColor = MeTimeColors.pinkPrimary;
      _textColor = MeTimeColors.pinkPrimary;
    });
  }

  void _unhighlight() {
    setState(() {
      _borderColor = MeTimeColors.stroke;
      _textColor = MeTimeColors.blackTernary;
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.unhighlight = _unhighlight;

    return SizedBox(
      height: widget.useProLabel ? 75 : 50,
      width: 170,
      child: GestureDetector(
        onTap: () {
          _handleCardTap();
          widget.onPressed?.call(widget.id, _unhighlight);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: _borderColor),
          ),
          elevation: 0,
          child: Container(
            height: widget.useProLabel ? 50 : 75,
            padding: widget.useProLabel ? const EdgeInsets.all(10) : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    widget.time,
                    style: TextStyle(fontSize: 20, color: _textColor),
                  ),
                ),
                widget.useProLabel
                    ? Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'with ',
                      style: TextStyle(fontSize: 15, color: _textColor),
                      children: <TextSpan>[
                        TextSpan(
                          text: widget.withPro!,
                          style: TextStyle(
                            fontSize: 15,
                            color: _textColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                    : const SizedBox(height: 0),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

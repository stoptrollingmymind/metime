import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

class DatePickerCard extends StatefulWidget {
  final int date;
  final String dayOfWeek;
  final String id;
  final void Function(String, VoidCallback)? onPressed;
  VoidCallback? unhighlight;

  DatePickerCard(
      {super.key,
      required this.date,
      required this.dayOfWeek,
      this.onPressed,
      required this.id});

  @override
  _DatePickerCardState createState() => _DatePickerCardState();
}

class _DatePickerCardState extends State<DatePickerCard> {
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

    return GestureDetector(
      onTap: () {
        _handleCardTap();
        widget.onPressed?.call(widget.id, _unhighlight);
      },
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: _borderColor)),
        elevation: 0,
        child: Container(
          width: 60,
          height: 72,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(widget.date.toString(),
                  style: TextStyle(fontSize: 20, color: _textColor)),
              Text(widget.dayOfWeek,
                  style: TextStyle(fontSize: 16, color: _textColor)),
            ],
          ),
        ),
      ),
    );
  }
}

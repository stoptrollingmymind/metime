import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';

import 'date_picker_card.dart';


class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  String? selectedCardId;

  void _changeSelectedCardId(selectedCardId) {
    setState(() {
      this.selectedCardId = selectedCardId;
    });
  }

  @override
  Widget build(BuildContext context) {
    const data = [
      (17, 'Sun', "1"),
      (18, 'Mon', "2"),
      (19, 'Tue', "3"),
      (20, 'Wen', "4"),
      (21, 'Thu', "5"),
      (22, 'Fri', "6"),
      (23, 'Sat', "7"),
      (24, 'Sun', "8"),
      (25, 'Mon', "9"),
      (26, 'Tue', "10")
    ];

    Map<String, DatePickerCard> cards = {};
    cards.addAll({
      for (var item in data)
        item.$3: DatePickerCard(date: item.$1, dayOfWeek: item.$2, id: item.$3, onPressed: (id, unhighlightFun) {
          if(selectedCardId == null) {
            _changeSelectedCardId(id);
          } else if(selectedCardId == id) {
            _changeSelectedCardId(null);
            unhighlightFun();
          } else {
            cards[selectedCardId]?.unhighlight?.call();
            _changeSelectedCardId(id);
          }
        }),
    });

    return SizedBox(
        width: 365,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Day', style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(width: 220),
                Text('October', style: Theme.of(context).textTheme.displaySmall),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward_ios_sharp, size: 14, color: MeTimeColors.blackTernary),
              ],
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: cards.values.toList(),
              ),
            ),
          ],
        ));
  }
}

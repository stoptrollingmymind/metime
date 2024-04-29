import 'package:flutter/material.dart';
import 'package:metime/constants/metime_colors.dart';
import 'package:metime/feature/booking/professional_detail/widget/time_picker_card.dart';

class TimePickerWidget extends StatefulWidget {
  final List<(String, String, String?)> data;
  final bool forSameProfessional;

  const TimePickerWidget({super.key, required this.data, required this.forSameProfessional});

  @override
  _TimePickerWidgetState createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  String? selectedCardId;

  void _changeSelectedCardId(selectedCardId) {
    setState(() {
      this.selectedCardId = selectedCardId;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map<String, TimePickerCard> cards = {};
    cards.addAll({
      for (var item in widget.data)
        item.$2: TimePickerCard(
            time: item.$1,
            id: item.$2,
            withPro: item.$3,
            useProLabel: !widget.forSameProfessional,
            onPressed: (id, unhighlightFun) {
              if (selectedCardId == null) {
                _changeSelectedCardId(id);
              } else if (selectedCardId == id) {
                _changeSelectedCardId(null);
                unhighlightFun();
              } else {
                cards[selectedCardId]?.unhighlight?.call();
                _changeSelectedCardId(id);
              }
            }),
    });

    var cardWidgets = cards.values.toList();
    List<Widget> columnChildren = [];

    for (int i = 0; i < cards.length; i += 2) {
      var sizedBox = Row(
        children: [
          cardWidgets[i],
          const SizedBox(width: 8),
          i + 1 < cardWidgets.length
              ? cardWidgets[i + 1]
              : const SizedBox(),
        ],
      );
      columnChildren.add(sizedBox);
      columnChildren.add(const SizedBox(height: 10));
    }

    return SizedBox(
        width: 365,
        height: widget.forSameProfessional ? 250 : 320,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Availability',
                    style: Theme.of(context).textTheme.labelLarge),
                const SizedBox(width: 250),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: columnChildren,
            ),
          ],
        ));
  }
}

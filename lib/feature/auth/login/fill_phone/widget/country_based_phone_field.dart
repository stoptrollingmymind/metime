import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CountryBasedPhoneField extends StatefulWidget {
  final String countryCode;
  final ValueChanged<String>? onChanged;

  const CountryBasedPhoneField({
    Key? key,
    required this.countryCode,
    this.onChanged,
  }) : super(key: key);

  @override
  _CountryBasedPhoneFieldState createState() => _CountryBasedPhoneFieldState();
}

class _CountryBasedPhoneFieldState extends State<CountryBasedPhoneField> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: '00 0 0000 0000',
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.countryCode),
            const SizedBox(width: 10),
            Container(
              width: 0.5,
              height: 30,
              color: Colors.grey,
            ),
          ],
        ),
        prefix: const SizedBox.shrink(),
      ),
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(15),
      ],
      onChanged: (value) {
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
    );
  }
}


import 'package:country_icons/country_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metime/util/country_code_helper.dart';

class CountryPickerWidget extends StatefulWidget {
  final ValueChanged<String?>? onChanged;
  final String selectedCountry;

  const CountryPickerWidget({super.key, this.onChanged, required this.selectedCountry});

  @override
  _CountryPickerWidgetState createState() => _CountryPickerWidgetState();
}

class _CountryPickerWidgetState extends State<CountryPickerWidget> {
  @override
  Widget build(BuildContext context) {

    const availableCountries = [
      'Brazil',
      'USA',
      'Germany',
      'Russian',
      'France',
    ];

    return DropdownButton<String>(
      isExpanded: true,
      value: widget.selectedCountry,
      onChanged: widget.onChanged,
      items: availableCountries
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            children: [
              value != 'Brazil'
                  ? SizedBox(
                width: 24,
                height: 24,
                child: CountryIcons.getSvgFlag(
                    getCountryCode(value).$2),
              )
                  : Image.asset('assets/Brazil.png',
                  width: 24, height: 24),
              const SizedBox(width: 10),
              Text(value),
            ],
          ),
        );
      }).toList(),
    );
  }

}
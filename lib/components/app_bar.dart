import 'package:flutter/material.dart';

import 'logo.dart';

class MeTimeAppBar extends StatelessWidget implements PreferredSizeWidget{
  final bool? useLogo;
  final bool? useNavigation;
  const MeTimeAppBar({super.key, this.useLogo, this.useNavigation});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: useLogo != null && useLogo! ? const MeTimeLogo() : null,
      leading: (useNavigation != null && useNavigation! ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ) : null
    ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
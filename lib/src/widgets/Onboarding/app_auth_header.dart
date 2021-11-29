import 'package:flutter/material.dart';

class AppAuthHeader extends StatelessWidget {
  final String title;
  const AppAuthHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5!.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onSurface),
    );
  }
}

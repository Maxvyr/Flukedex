import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.error,
    required this.stackTrace,
    super.key,
  });

  final Object error;
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            error.toString(),
            style: Theme.of(context).textTheme.headline2,
          ),
          const Divider(),
          Text(
            stackTrace.toString(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

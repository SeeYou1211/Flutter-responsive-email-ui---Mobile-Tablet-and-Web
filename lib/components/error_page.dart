import 'package:flutter/material.dart';
import 'package:outlook/generated/l10n/l10n.dart';

class ErrorPage extends StatelessWidget {
  final FlutterErrorDetails? details;

  const ErrorPage({this.details, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.errorMessage,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

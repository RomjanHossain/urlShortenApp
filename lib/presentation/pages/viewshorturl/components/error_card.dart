import 'package:flutter/material.dart';
import 'package:url_shorten/domain/entities/error_entities.dart';

class ErrorCard extends StatelessWidget {
  const ErrorCard({
    super.key,
    required this.errorMode,
  });

  /// error entity
  final ErrorModel errorMode;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(errorMode.domain),
        subtitle: Center(
          child: Text(
            errorMode.message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
        ),
      ),
    );
  }
}

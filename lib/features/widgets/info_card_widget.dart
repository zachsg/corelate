import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 32,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.7),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        message,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

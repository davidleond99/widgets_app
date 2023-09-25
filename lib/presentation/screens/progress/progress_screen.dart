import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text('Circular Progress Indicator'),
          const SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: colors.primaryContainer,
            color: colors.primary,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Circular Progress Indicator Controlado'),
          const SizedBox(
            height: 10,
          ),
          _ControlledProgressIndicator(colors),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final color;
  const _ControlledProgressIndicator(ColorScheme colors) : color = colors;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 100), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 2,
                  backgroundColor: color.primaryContainer,
                  color: color.primary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: LinearProgressIndicator(
                    value: progressValue,
                  ),
                ),
              ],
            ),
          );
        });
  }
}

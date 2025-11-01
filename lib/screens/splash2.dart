import 'package:flutter/material.dart';
import '../widgets/indicator_bar.dart';
import 'splash3.dart';

class Splash2Screen extends StatelessWidget {
  const Splash2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Spacer(),
              Image.asset('assets/images/splash2.png', height: 240),
              const SizedBox(height: 24),
              Text("Sederhana & Cepat",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8),
              Text(
                "UI rapi, fokus, dan hemat ketukan. Kita sayang jempol manusia.",
                textAlign: TextAlign.center,
                style: TextStyle(color: cs.onSurfaceVariant),
              ),
              const Spacer(),
              const IndicatorBar(current: 1, total: 3),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Kembali"),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => const Splash3Screen(),
                            transitionsBuilder: (_, a, __, child) =>
                              FadeTransition(opacity: a, child: child),
                          ),
                        );
                      },
                      child: const Text("Lanjut"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

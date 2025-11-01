import 'package:flutter/material.dart';
import '../widgets/indicator_bar.dart';
import 'splash2.dart';

class Splash1Screen extends StatelessWidget {
  const Splash1Screen({super.key});

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
              Image.asset('assets/images/splash1.png', height: 240, fit: BoxFit.contain),
              const SizedBox(height: 24),
              Text("Selamat Datang",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8),
              Text(
                "Aplikasi simpel, bukan simulasi roket. Mulai dengan tiga langkah cepat.",
                textAlign: TextAlign.center,
                style: TextStyle(color: cs.onSurfaceVariant),
              ),
              const Spacer(),
              const IndicatorBar(current: 0, total: 3),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Splash2Screen(),
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
        ),
      ),
    );
  }
}

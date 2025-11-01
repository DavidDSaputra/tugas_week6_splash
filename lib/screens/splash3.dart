import 'package:flutter/material.dart';
import '../widgets/indicator_bar.dart';
import 'login.dart';

class Splash3Screen extends StatelessWidget {
  const Splash3Screen({super.key});

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
              Image.asset('assets/images/splash3.png', height: 240),
              const SizedBox(height: 24),
              Text("Siap Dipakai",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: 8),
              Text(
                "Langsung masuk ke layar login. Tidak perlu menghafal mantra hujan",
                textAlign: TextAlign.center,
                style: TextStyle(color: cs.onSurfaceVariant),
              ),
              const Spacer(),
              const IndicatorBar(current: 2, total: 3),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                      (route) => false,
                    );
                  },
                  child: const Text("Mulai"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

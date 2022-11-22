part of 'screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        'FRESHLY'.text.bold.make(),
      ]).centered(),
    );
  }
}

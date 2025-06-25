import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_versiculo_diario/splash/infra/ui/splash_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  // Garante que os bindings do Flutter estejam inicializados
  WidgetsFlutterBinding.ensureInitialized();
  // Inicializa o MobileAds SDK
  await MobileAds.instance.initialize();
  // Trava para apenas modo retrato
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // Executa o aplicativo
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Versículo Diário',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 114, 255, 96)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

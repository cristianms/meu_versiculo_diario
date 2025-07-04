import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meu_versiculo_diario/core/context_extension.dart';
import 'package:meu_versiculo_diario/core/db/base_dados.dart';
import 'package:meu_versiculo_diario/dashboard/infra/ui/dashboard_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initSplashConfig(context);
    super.initState();
  }

  Future<void> initSplashConfig(BuildContext context) async {
    // Aguarda um delay para exibição do logo e carrega a aplicação
    await Future.delayed(const Duration(milliseconds: 1500));
    // Inicializa banco de dados
    BaseDados();
    // Redireciona para a página RechWrapperAppLinks
    // ignore: use_build_context_synchronously
    await Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 1000),
        pageBuilder: (context, animation, secondaryAnimation) => const DashboardPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/imagens/icone_aplicativo.svg',
              width: getLogoWidth(context),
            ),
          ),
        ),
      ),
    );
  }

  /// Retorna o valor da largura de acordo com o tipo de tela do dispositivo
  double getLogoWidth(BuildContext context) {
    final screenWidth = context.screenWidth;
    return context.getDoubleByScreenType(
      tabletScreen: screenWidth * 0.50,
      landScapeMode: screenWidth * 0.30,
      defaultScreen: screenWidth * 0.70,
    );
  }
}

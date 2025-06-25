import 'package:flutter/material.dart';
import 'package:meu_versiculo_diario/dashboard/infra/ui/banner_widget.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/ui/verse_generator_widget.dart';
import 'package:meu_versiculo_diario/privacy_police/infra/ui/privacy_police_page.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  /// Variáveis para o Banner de Anúncio
  BannerAd? _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    // Inicializa o Banner de Anúncio
    _inicializaBannerAdMob();
  }

  void _inicializaBannerAdMob() {
    _bannerAd = BannerAd(
      // adUnitId: 'ca-app-pub-2193520791388347/3924970930', // seu ID de anúncio
      adUnitId: 'ca-app-pub-3940256099942544/9214589741', // seu ID de anúncio
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() => _isAdLoaded = true);
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print('Ad falhou: ${error.message}');
        },
      ),
    );
    // Carrega o Banner de Anúncio
    _bannerAd!.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  // Future<void> _consulta() async {
  //   final db = BaseDados();
  //   final testament = await db.query('testament');
  //   final books = await db.query('books');
  //   final verses = await db.query('verses');
  //   print('testament:');
  //   print(testament);
  //   print('books:');
  //   print(books);
  //   print('verses:');
  //   print(verses);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Versículo Diário'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'privacy_policy',
                  child: Text('Política de privacidade'),
                ),
              ];
            },
            onSelected: (value) async {
              if (value == 'privacy_policy') {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrivacyPolicePage()),
                );
              }
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: VerseGeneratorWidget(),
          ),
          // Banner de anúncio
          if (_isAdLoaded) ...[
            BannerWidget(
              key: const Key('banner_widget'),
              bannerAd: _bannerAd!,
            ),
          ],
        ],
      ),
    );
  }
}
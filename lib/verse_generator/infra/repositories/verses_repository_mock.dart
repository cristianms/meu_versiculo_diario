import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/repositories/verses_repository.dart';

class VersesRepositoryMock implements VersesRepository {
  @override
  List<Versiculo> getAllVerses() {
    return <Versiculo>[
      Versiculo(
        texto: 'Porque vivemos por fé, e não pelo que vemos.',
        livro: '2 Coríntios',
        versiculo: '5:7',
      ),
      Versiculo(
        texto: 'O que é nascido de Deus vence o mundo; e esta é a vitória que vence o mundo: a nossa fé.',
        livro: '1 João',
        versiculo: '5:4',
      ),
      Versiculo(
        texto: 'E, assim, a fé vem pelo ouvir, e o ouvir, pela palavra de Cristo.',
        livro: 'Romanos',
        versiculo: '10:17',
      ),
      Versiculo(
        texto: 'Assim, também a fé, se não tiver obras, por si só está morta.',
        livro: 'Tiago',
        versiculo: '2:17',
      ),
      Versiculo(
        texto: 'Mas o meu justo viverá pela fé. E, se retroceder, não me agradarei dele.',
        livro: 'Hebreus',
        versiculo: '10:38',
      ),
      Versiculo(
        texto: 'Porque pela graça vocês são salvos, mediante a fé; e isto não vem de vocês, é dom de Deus;',
        livro: 'Efésios',
        versiculo: '2:8',
      ),
      Versiculo(
        texto: 'Ora, a fé é a certeza de coisas que se esperam, a convicção de fatos que não se veem.',
        livro: 'Hebreus',
        versiculo: '11:1',
      ),
      Versiculo(
        texto: 'Tendo sido, pois, justificados pela fé, temos paz com Deus, por nosso Senhor Jesus Cristo,',
        livro: 'Romanos',
        versiculo: '5:1',
      ),
      Versiculo(
        texto: 'Há um só Senhor, uma só fé, um só batismo, um só Deus e Pai de todos, o qual é sobre todos, age por meio de todos e está ,em todos.',
        livro: 'Efésios 4',
        versiculo: '5-6',
      ),
      Versiculo(
        texto: 'Tudo posso naquele que me fortalece.',
        livro: 'Filipenses',
        versiculo: '4:13',
      ),
      Versiculo(
        texto: 'Tudo o que fizerem, façam de todo o coração, como para o Senhor e não para as pessoas...',
        livro: 'Colossenses',
        versiculo: '3:23',
      ),
      Versiculo(
        texto: 'Porque Deus é quem efetua em vocês tanto o querer como o realizar, segundo a sua boa vontade.',
        livro: 'Filipenses',
        versiculo: '2:13',
      ),
      Versiculo(
        texto: 'Que diremos, pois, diante dessas coisas? Se Deus é por nós, quem será contra nós?',
        livro: 'Romanos',
        versiculo: '8:31',
      ),
      Versiculo(
        texto: 'Ele fortalece o cansado e multiplica as forças ao que não tem nenhum vigor.',
        livro: 'Isaías',
        versiculo: '40:29',
      ),
      Versiculo(
        texto: 'Quanto ao mais, sejam fortalecidos no Senhor e na força do seu poder.',
        livro: 'Efésios',
        versiculo: '6:10',
      ),
      Versiculo(
        texto: 'Quanto a vocês, irmãos, nunca se cansem de fazer o bem.',
        livro: '2 Tessalonicenses',
        versiculo: '3:13',
      ),
      Versiculo(
        texto: 'Prossigo para o alvo, para o prêmio da soberana vocação de Deus em Cristo Jesus.',
        livro: 'Filipenses',
        versiculo: '3:14',
      ),
      Versiculo(
        texto:
            'Esta é minha ordem: Seja forte e corajoso! Não tenha medo nem desanime, pois o Senhor , seu Deus, estará com você por onde ,você andar.',
        livro: 'Josué',
        versiculo: '1:9',
      ),
      Versiculo(
        texto: 'Façam tudo com amor.',
        livro: '1 Coríntios',
        versiculo: '16:14',
      ),
      Versiculo(
        texto: 'Ele nos deu este mandamento: Quem ama a Deus, ame também seu irmão.',
        livro: '1 João',
        versiculo: '4:21',
      ),
      Versiculo(
        texto: 'Quem não ama não conhece a Deus, porque Deus é amor.',
        livro: '1 João',
        versiculo: '4:8',
      ),
      Versiculo(
        texto: 'Ame o Senhor, o seu Deus de todo o seu coração, de toda a sua alma, de todo o seu entendimento e de todas as suas forças.',
        livro: 'Marcos',
        versiculo: '12:30',
      ),
      Versiculo(
        texto: 'O meu mandamento é este: amem-se uns aos outros como eu os amei.',
        livro: 'João',
        versiculo: '15:12',
      ),
      Versiculo(
        texto: 'O amor tudo sofre, tudo crê, tudo espera, tudo suporta.',
        livro: '1 Coríntios',
        versiculo: '13:7',
      ),
      Versiculo(
        texto: 'Agora, pois, permanecem a fé, a esperança e o amor, estes três; porém o maior deles é o amor.',
        livro: '1 Coríntios',
        versiculo: '13:13',
      ),
      Versiculo(
        texto: 'Nisto todos conhecerão que vocês são meus discípulos: se tiverem amor uns aos outros.',
        livro: 'João',
        versiculo: '13:35',
      ),
      Versiculo(
        texto: 'O amor seja sem hipocrisia. Odeiem o mal e apeguem-se ao bem.',
        livro: 'Romanos',
        versiculo: '12:9',
      ),
      Versiculo(
        texto: 'Levem os fardos pesados uns dos outros e, assim, cumpram a lei de Cristo.',
        livro: 'Gálatas',
        versiculo: '6:2',
      ),
      Versiculo(
        texto: 'O Senhor é o meu pastor; nada me faltará.',
        livro: 'Salmos',
        versiculo: '23:1',
      ),
      Versiculo(
        texto: 'Lâmpada para os meus pés é a tua palavra, é luz para os meus caminhos.',
        livro: 'Salmos',
        versiculo: '119:105',
      ),
      Versiculo(
        texto: 'Entrega o teu caminho ao Senhor; confia nele, e Ele tudo fará.',
        livro: 'Salmos',
        versiculo: '37:5',
      ),
      Versiculo(
        texto: 'Senhor, tu me sondas e me conheces.',
        livro: 'Salmos',
        versiculo: '139:1',
      ),
      Versiculo(
        texto: 'Aquele que habita no esconderijo do Altíssimo, à sombra do Onipotente descansará.',
        livro: 'Salmos',
        versiculo: '91:1',
      ),
      Versiculo(
        texto: 'O ímpio toma emprestado e não paga; mas o justo se compadece e dá.',
        livro: 'Salmos',
        versiculo: '37:21',
      ),
      Versiculo(
        texto: 'Nenhum mal te sucederá, nem praga alguma chegará à tua tenda.',
        livro: 'Salmos',
        versiculo: '91:10',
      ),
      Versiculo(
        texto: 'Celebrai com júbilo ao Senhor, todos os moradores da terra.',
        livro: 'Salmos',
        versiculo: '100:1',
      ),
      Versiculo(
        texto: 'Dêem graças ao Senhor, porque ele é bom. O seu amor dura para sempre!',
        livro: 'Salmos',
        versiculo: '136:1',
      ),
      Versiculo(
        texto: 'Todo ser que respira louve o Senhor. Aleluia!',
        livro: 'Salmos',
        versiculo: '150:6',
      ),
      Versiculo(
        texto: 'Dêem graças ao Senhor, porque ele é bom. O seu amor dura para sempre!',
        livro: 'Salmos',
        versiculo: '136:1',
      ),
      Versiculo(
        texto: 'Agradeço a meu Deus toda vez que me lembro de vocês.',
        livro: 'Filipenses',
        versiculo: '1:3',
      ),
      Versiculo(
        texto: 'Dando sempre graças por tudo a nosso Deus e Pai, em nome de nosso Senhor Jesus Cristo.',
        livro: 'Efésios',
        versiculo: '5:20',
      ),
      Versiculo(
        texto: 'Graças a Deus, que nos dá a vitória por meio de nosso Senhor Jesus Cristo.',
        livro: '1 Coríntios',
        versiculo: '15:57',
      ),
      Versiculo(
        texto: 'Em tudo, deem graças, porque esta é a vontade de Deus para vocês em Cristo Jesus.',
        livro: '1 Tessalonicenses',
        versiculo: '5:18',
      ),
      Versiculo(
        texto: 'Graças a Deus por essa dádiva tão maravilhosa que nem as palavras conseguem expressar!',
        livro: '2 Coríntios',
        versiculo: '9:15',
      ),
      Versiculo(
        texto: 'Dando graças ao Pai, que nos tornou dignos de participar da herança dos santos no reino da luz.',
        livro: 'Colossenses',
        versiculo: '1:12',
      ),
      Versiculo(
        texto: 'Não deixo de dar graças por vocês, mencionando-os em minhas orações.',
        livro: 'Efésios',
        versiculo: '1:16',
      ),
      Versiculo(
        texto: 'Deem graças ao Senhor , porque ele é bom, porque a sua misericórdia dura para sempre.',
        livro: '1 Crônicas',
        versiculo: '16:34',
      ),
      Versiculo(
        texto: 'E eu, Senhor, que espero? Tu és a minha esperança.',
        livro: 'Salmos',
        versiculo: '39:7',
      ),
      Versiculo(
        texto: 'Apeguemo-nos com firmeza à esperança que professamos, pois aquele que prometeu é fiel.',
        livro: 'Hebreus',
        versiculo: '10:23',
      ),
      Versiculo(
        texto: 'A esperança adiada faz o coração ficar doente, mas o sonho realizado é árvore de vida.',
        livro: 'Provérbios',
        versiculo: '13:12',
      ),
      Versiculo(
        texto: 'Venham a mim todos vocês que estão cansados e sobrecarregados, e eu os aliviarei.',
        livro: 'Mateus',
        versiculo: '11:28',
      ),
      Versiculo(
        texto: 'Portanto, visto que temos tal esperança, mostramos muita confiança.',
        livro: '2 Coríntios',
        versiculo: '3:12',
      ),
      Versiculo(
        texto: 'Tenho-vos dito isso, para que em mim tenhais paz; no mundo tereis aflições, mas tende bom ânimo; eu venci o mundo.',
        livro: 'João',
        versiculo: '16:33',
      ),
      Versiculo(
        texto: 'Entregue suas aflições ao Senhor , e ele cuidará de você; jamais permitirá que o justo tropece e caia.',
        livro: 'Salmos',
        versiculo: '55:22',
      ),
      Versiculo(
        texto: 'E todo o que tem essa esperança nele purifica a si mesmo, assim como ele é puro.',
        livro: '1 João',
        versiculo: '3:3',
      ),
      Versiculo(
        texto: 'Há somente um corpo e um só Espírito, como também é uma só a esperança para a qual vocês foram chamados.',
        livro: 'Efésios',
        versiculo: '4:4',
      ),
      Versiculo(
        texto: 'Sejam fortes e corajosos, todos vocês que esperam no Senhor!',
        livro: 'Salmos',
        versiculo: '31:24',
      ),
      Versiculo(
        texto:
            'Porque Deus amou o mundo de tal maneira que deu seu Filho unigênito para todo aquele que nele crê não pereça mas tenha a ,vida eterna.',
        livro: 'João',
        versiculo: '3:16',
      ),
      Versiculo(
        texto: 'Arrependam-se, pois, e voltem-se para Deus, para que os seus pecados sejam cancelados,',
        livro: 'Atos',
        versiculo: '3:19',
      ),
      Versiculo(
        texto: 'Se confessarmos os nossos pecados, ele é fiel e justo para nos perdoar os pecados e nos purificar de toda injustiça.',
        livro: '1 João',
        versiculo: '1:9',
      ),
      Versiculo(
        texto: 'Ele dizia: O tempo está cumprido, e o Reino de Deus está próximo; arrependam-se e creiam no evangelho.',
        livro: 'Marcos',
        versiculo: '1:15',
      ),
      Versiculo(
        texto: 'Quem esconde os seus pecados não prospera, mas quem os confessa e os abandona encontra misericórdia.',
        livro: 'Provérbios',
        versiculo: '28:13',
      ),
      Versiculo(
        texto:
            'Pedro respondeu: "Arrependam-se, e cada um de vocês seja batizado em nome de Jesus Cristo, para perdão dos seus pecados, e receberão o dom do Espírito Santo.',
        livro: 'Atos',
        versiculo: '2:38',
      ),
      Versiculo(
        texto: 'Dêem fruto que mostre o arrependimento!',
        livro: 'Mateus',
        versiculo: '3:8',
      ),
      Versiculo(
        texto:
            'Pois não me envergonho do evangelho, porque é o poder de Deus para a salvação de todo aquele que crê, primeiro do judeu e também do grego.',
        livro: 'Romanos',
        versiculo: '1:16',
      ),
      Versiculo(
        texto: 'Cheguem perto de Deus, e ele se chegará a vocês. Limpem as mãos, pecadores! E vocês que são indecisos, purifiquem o coração.',
        livro: 'Tiago',
        versiculo: '4:8',
      ),
      Versiculo(
        texto: 'Porque pela graça vocês são salvos, mediante a fé; e isto não vem de vocês, é dom de Deus;',
        livro: 'Efésios',
        versiculo: '2:8',
      ),
      Versiculo(
        texto: 'Eu lhes digo que, da mesma forma, há alegria na presença dos anjos de Deus por um pecador que se arrepende".',
        livro: 'Lucas',
        versiculo: '15:10',
      ),
      Versiculo(
        texto: 'O Senhor te abençoe e te guarde;',
        livro: 'Números',
        versiculo: '6:24',
      ),
      Versiculo(
        texto: 'Caiam mil ao seu lado, e dez mil, à sua direita; você não será atingido.',
        livro: 'Salmos',
        versiculo: '91:7',
      ),
      Versiculo(
        texto: 'Mas o Senhor é fiel; ele os fortalecerá e os guardará do Maligno.',
        livro: '2 Tessalonicenses',
        versiculo: '3:3',
      ),
      Versiculo(
        texto: 'Não peço que os tires do mundo, mas que os guardes do mal.',
        livro: 'João',
        versiculo: '17:15',
      ),
      Versiculo(
        texto: 'O Senhor é refúgio para os oprimidos, uma torre segura na hora da adversidade.',
        livro: 'Salmos',
        versiculo: '9:9',
      ),
      Versiculo(
        texto: 'Protege-me, ó Deus, pois em ti me refugio.',
        livro: 'Salmos',
        versiculo: '16:1',
      ),
      Versiculo(
        texto: 'Vistam-se com toda a armadura de Deus, para poderem ficar firmes contra as ciladas do diabo.',
        livro: 'Efésios',
        versiculo: '6:11',
      ),
      Versiculo(
        texto: 'É melhor buscar refúgio no Senhor do que confiar nos homens.',
        livro: 'Salmos',
        versiculo: '118:8',
      ),
      Versiculo(
        texto: 'Mas o Senhor protege aqueles que o temem, e os que firmam a esperança no seu amor,',
        livro: 'Salmos',
        versiculo: '33:18',
      ),
      Versiculo(
        texto: 'Em paz me deito e logo adormeço, pois só tu, Senhor, me fazes viver em segurança.',
        livro: 'Salmos',
        versiculo: '4:8',
      ),
      Versiculo(
        texto: 'Os que confiam no Senhor são como o monte Sião, que não se abala, mas permanece para sempre.',
        livro: 'Salmos',
        versiculo: '125:1',
      ),
      Versiculo(
        texto: 'Pois Deus não nos deu espírito de covardia, mas de poder, de amor e de equilíbrio.',
        livro: '2 Timóteo',
        versiculo: '1:7',
      ),
      Versiculo(
        texto: 'Lancem sobre ele toda a sua ansiedade, porque ele tem cuidado de vocês.',
        livro: '1 Pedro',
        versiculo: '5:7',
      ),
      Versiculo(
        texto: 'Confie no Senhor de todo o seu coração e não se apóie em seu próprio entendimento;',
        livro: 'Provérbios',
        versiculo: '3:5',
      ),
      Versiculo(
        texto: 'Confiem sempre no Senhor , porque o Senhor Deus é uma rocha eterna.',
        livro: 'Isaías',
        versiculo: '26:4',
      ),
      Versiculo(
        texto: 'Entregue o seu caminho ao Senhor , confie nele, e o mais ele fará.',
        livro: 'Salmos',
        versiculo: '37:5',
      ),
      Versiculo(
        texto: 'Sei que podes fazer todas as coisas; nenhum dos teus planos pode ser frustrado.',
        livro: 'Jó',
        versiculo: '42:2',
      ),
      Versiculo(
        texto: 'Escondi a tua palavra no meu coração, para eu não pecar contra ti.',
        livro: 'Salmos',
        versiculo: '119:11',
      ),
      Versiculo(
        texto: 'Mas quem ama a Deus, este é conhecido por Deus.',
        livro: '1 Coríntios',
        versiculo: '8:3',
      ),
      Versiculo(
        texto: 'E conhecereis a verdade, e a verdade vos libertará".',
        livro: 'João',
        versiculo: '8:32',
      ),
      Versiculo(
        texto: 'Santifica-os na verdade; a tua palavra é a verdade.',
        livro: 'João',
        versiculo: '17:17',
      ),
      Versiculo(
        texto: 'Respondeu Jesus: "Eu sou o caminho, a verdade e a vida. Ninguém vem ao Pai, a não ser por mim.',
        livro: 'João',
        versiculo: '14:6',
      ),
      Versiculo(
        texto: 'Esta é a vida eterna: que te conheçam, o único Deus verdadeiro, e a Jesus Cristo, a quem enviaste.',
        livro: 'João',
        versiculo: '17:3',
      ),
      Versiculo(
        texto: 'Mas graças a Deus, que nos dá a vitória por meio de nosso Senhor Jesus Cristo.',
        livro: '1 Coríntios',
        versiculo: '15:57',
      ),
      Versiculo(
        texto: 'Pois nada podemos contra a verdade, mas somente em favor da verdade.',
        livro: '2 Coríntios',
        versiculo: '13:8',
      ),
    ];
  }
}

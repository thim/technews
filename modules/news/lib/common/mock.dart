final apiMock = r'''
{
  "status": "ok",
  "totalResults": 70,
  "articles": [
      {
      "source": {
        "id": null,
        "name": "Techtudo.com.br"
      },
      "author": null,
      "title": "Core i5 10400F é bom? Veja ficha técnica e preço do processador Intel - TechTudo",
      "description": "Core i5 intermediário tem seis núcleos, não tem placa gráfica integrada e custa menos que Ryzen 5 3600",
      "url": "https://www.techtudo.com.br/noticias/2021/07/core-i5-10400f-e-bom-veja-ficha-tecnica-e-preco-do-processador-intel.ghtml",
      "urlToImage": "https://s2.glbimg.com/it4ES8Rk8UHFQ1NMUECC-GHjwb0=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/t/x/Buv8GvQ1S4J5PUzTqrSg/i5.jpg",
      "publishedAt": "2021-07-25T07:00:38Z",
      "content": "Core i5 10400F é um processador de 10ª geração da Intel lançado em abril de 2020. O componente tem seis núcleos e faz parte da série F voltada para desktops, linha caracterizada pela ausência de plac… [+6601 chars]"
    },
    
    {
      "source": {
        "id": null,
        "name": "Uol.com.br"
      },
      "author": "UOL",
      "title": "Tudo o que você precisa fazer para se proteger de golpes em 10 passos - Tilt",
      "description": "Hoje, 90% dos crimes digitais são variações de estelionato. A informação foi dado por Richard Encinas, coordenador do Cyber Gaeco, unidade do Ministério Público do Estado de São Paulo criada em 2018 para enfrentamento a crimes envolvendo tecnologias.Segun",
      "url": "https://www.uol.com.br/tilt/noticias/redacao/2021/07/26/tudo-o-que-voce-precisa-fazer-para-se-proteger-de-golpes-virtuais.htm",
      "urlToImage": "https://conteudo.imguol.com.br/c/noticias/03/2019/07/24/hacker-spoofing-ddod-ataque-cibernetico-ataque-virtual-golpe-seguranca-1563999388435_v2_615x300.jpg",
      "publishedAt": "2021-07-26T07:00:00Z",
      "content": "Hoje, 90% dos crimes digitais são variações de estelionato. A informação foi dado por Richard Encinas, coordenador do Cyber Gaeco, unidade do Ministério Público do Estado de São Paulo criada em 2018 … [+8198 chars]"
    },
    {
      "source": {
        "id": "globo",
        "name": "Globo"
      },
      "author": null,
      "title": "3 apps e sites para quem não consegue juntar dinheiro de jeito nenhum! - Valor Investe",
      "description": "Se você sabe da importância de juntar dinheiro, mas mesmo assim não tem esse hábito, algumas fintechs prometem te ajudar",
      "url": "https://valorinveste.globo.com/blogs/nathalia-larghi/post/2021/07/3-apps-e-sites-para-quem-nao-consegue-juntar-dinheiro-de-jeito-nenhum.ghtml",
      "urlToImage": "https://s2.glbimg.com/PQ4jfheUFZhO5NIwsxM3uqhW78c=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_f035dd6fd91c438fa04ab718d608bbaa/internal_photos/bs/2021/4/C/2daVusSGC9skTsAFlGBg/app-52-semanas.jpg",
      "publishedAt": "2021-07-26T03:00:38Z",
      "content": "Se a gente sair por aí perguntando se o hábito de juntar dinheiro é importante muita gente vai dizer que sim. Porém, ao mesmo tempo, pouca gente consegue poupar semanalmente ou mensalmente. Por isso,… [+2889 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Livecoins.com.br"
      },
      "author": "https://facebook.com/livecoinsbr",
      "title": "Bitcoin recupera nível técnico importante e encosta nos US$ 40 mil - Livecoins",
      "description": "O Bitcoin subiu acima de sua média móvel de 50 dias pela primeira vez desde 12 de maio e disparou mais de 3 mil dólares.",
      "url": "https://livecoins.com.br/bitcoin-recupera-ma-50-dias-40-mil/",
      "urlToImage": "https://livecoins.com.br/wp-content/uploads/2021/07/Bitcoin-alta.jpg",
      "publishedAt": "2021-07-26T01:41:24Z",
      "content": "O Bitcoin subiu acima de sua média móvel de 50 dias pela primeira vez desde 12 de maio na noite deste domingo (25) e disparou mais de 3 mil dólares em menos de uma hora.\r\nA moeda digital subiu mais d… [+1797 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Investing.com"
      },
      "author": "Investing.com",
      "title": "Bitcoin avança 12% em um rali Por Investing.com - Investing.com Brasil",
      "description": "Bitcoin avança 12% em um rali",
      "url": "https://br.investing.com/news/cryptocurrency-news/bitcoin-avanca-12-em-um-rali-896636",
      "urlToImage": "https://i-invdn-com.investing.com/news/LYNXMPEA74100_L.jpg",
      "publishedAt": "2021-07-26T01:04:00Z",
      "content": "Investing.com - O Bitcoin era negociado neste domingo a US$37.955,8 às 22:01 (01:01 GMT) segundo o Investing.com Index, um salto de 12,21% nas últimas 24h. Esse é o maior ganho diário desde 8 de feve… [+1157 chars]"
    },
    {
      "source": {
        "id": "google-news",
        "name": "Google News"
      },
      "author": null,
      "title": "Espião Pegasus infecta Android e iPhone. Saiba tudo sobre ele – TecMundo - TecMundo",
      "description": null,
      "url": "https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9UzVLTEQwRVlzTUHSAQA?oc=5",
      "urlToImage": null,
      "publishedAt": "2021-07-25T22:00:15Z",
      "content": null
    },
    {
      "source": {
        "id": null,
        "name": "Tecmundo.com.br"
      },
      "author": "Lupa Charleaux",
      "title": "7 extensões para usar no WhatsApp Web e melhorar sua experiência - TecMundo",
      "description": "Conheças as ferramentas que deixam ainda melhor o uso da versão para navegador do mensageiro",
      "url": "https://www.tecmundo.com.br/software/221714-7-extensoes-usar-whatsapp-web-melhorar-experiencia.htm",
      "urlToImage": "https://img.ibxk.com.br/2021/07/14/14171832343408.jpg",
      "publishedAt": "2021-07-25T22:00:01Z",
      "content": "O WhatsApp Web se tornou uma ferramenta importante para usuários comuns e contas comerciais. Com esse recurso, é possível conversar com outras pessoas ou atender clientes diretamente pelo navegador n… [+3813 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Tudocelular.com"
      },
      "author": "TudoCelular.com",
      "title": "Melhor celular top de linha para comprar em 2021 | Guia do TudoCelular - Tudocelular.com",
      "description": "Qual o melhor celular para comprar? Veja nossas indicações dos melhores de 2021, incluindo Samsung, Apple, Motorola, Xiaomi e Realme.",
      "url": "https://www.tudocelular.com/motorola/noticias/n177409/melhor-celular-top-de-linha-comprar-2021-1.html",
      "urlToImage": "https://t2.tudocdn.net/582822?w=1200",
      "publishedAt": "2021-07-25T20:29:46Z",
      "content": "E chegamos ao nosso último guia da primeira metade de 2021. Depois de selecionarmos os melhores celulares básicos e intermediários para comprar, temos aqui uma lista com os melhores avançados que tes… [+9970 chars]"
    },
    {
      "source": {
        "id": "globo",
        "name": "Globo"
      },
      "author": null,
      "title": "VÍDEO: Câmera flagra queda de meteoro na Noruega - G1",
      "description": "Registros mostram meteoro se deslocando a 16m3 km por segundo. Parte dele pode ter atingido a Terra, em um local próximo à capital Oslo.",
      "url": "https://g1.globo.com/mundo/noticia/2021/07/25/video-camera-flagra-queda-de-meteoro-na-noruega.ghtml",
      "urlToImage": "https://s2.glbimg.com/DH1XG-YH9xwTeKedvvWTOCbpxcU=/1200x/smart/filters:cover():strip_icc()/s03.video.glbimg.com/x720/9716226.jpg",
      "publishedAt": "2021-07-25T20:18:54Z",
      "content": "A Noruega registrou neste domingo (25) a queda de um meteoro que iluminou o céu brevemente e causou um forte ruído. Não há relatos imediatos de ferimentos ou danos. Uma câmera em Holmestrand, ao sul … [+1122 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Macmagazine.com.br"
      },
      "author": "Rafael Fischmann",
      "title": "Face ID está a caminho dos Macs, diz Mark Gurman – MacMagazine - MacMagazine",
      "description": "Desde que o Face ID estreou em iPhones, há quase quatro anos (com o iPhone X), especula-se quando a Apple levará sua tecnologia de reconhecimento facial para os Macs. Bem, segundo Mark Gurman em sua newsletter \"Power On\" (da Bloomberg), isso acontecerá \"nos p…",
      "url": "https://macmagazine.com.br/post/2021/07/25/face-id-esta-a-caminho-dos-macs-diz-mark-gurman/",
      "urlToImage": "https://macmagazine.com.br/wp-content/uploads/2019/08/06-face-id-mac.jpg",
      "publishedAt": "2021-07-25T18:41:00Z",
      "content": "Desde que o Face ID estreou em iPhones, há quase quatro anos (com o iPhone X), especula-se quando a Apple levará sua tecnologia de reconhecimento facial para os Macs.\r\nBem, segundo Mark Gurman em sua… [+1249 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Istoedinheiro.com.br"
      },
      "author": "Da redação",
      "title": "Descubra se seu celular foi rastreado pelo software espião Pegasus - IstoÉ Dinheiro",
      "description": "A Anistia Internacional publicou um manual para identificar se um aparelho celular está infectado pelo aplicativo de espionagem Pegasus",
      "url": "https://www.istoedinheiro.com.br/descubra-se-seu-celular-foi-rastreado-pelo-software-espiao-pegasus/",
      "urlToImage": "https://www.istoedinheiro.com.br/wp-content/uploads/sites/17/2021/07/iphone-410324-1920-1280x720.jpg",
      "publishedAt": "2021-07-25T18:16:00Z",
      "content": "A Anistia Internacional publicou um manual para identificar se um aparelho celular está infectado pelo aplicativo de espionagem Pegasus, utilizado para investigar e combater terrorismo. A ação reuniu… [+2137 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Uol.com.br"
      },
      "author": null,
      "title": "Pagos para jogar: desempregados faturam até R$ 5 mil com game de criptomoedas - Portal do Bitcoin",
      "description": "O Axie Infinity se tornou uma fonte de renda para brasileiros que conseguem ganhar quantias maiores que um salário mínimo.",
      "url": "https://portaldobitcoin.uol.com.br/axie-infinity-o-jogo-blockchain-que-se-tornou-fonte-de-renda-para-brasileiros/",
      "urlToImage": "https://portaldobitcoin.uol.com.br/wp-content/uploads/2021/07/axie-jogo.jpg",
      "publishedAt": "2021-07-25T17:00:00Z",
      "content": "A estudante Julia Silva de Negreiros, 18 anos, saiu da casa dos pais no início do ano para morar de aluguel com seu namorado em Nova Friburgo (RJ). Em abril, eles tiveram o primeiro filho. O casal, n… [+7234 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Tnh1.com.br"
      },
      "author": "Redação TNH1",
      "title": "Menina que sofreu queimaduras após explosão de celular em Pão de Açucar morre no HGE - TNH1",
      "description": "A menina Geovana Ferreira da Silva, de 10 anos, que sofreu queimaduras após uma explosão de aparelho celular, em Pão de Açúcar, morreu neste domingo (25).  A morte foi informada pelo Hospital Geral do Estado (HGE) onde a manor estava internada desde o &ua...",
      "url": "https://www.tnh1.com.br/noticia/nid/menina-que-sofreu-queimaduras-apos-explosao-de-celular-em-pao-de-acucar-morre-no-hge/",
      "urlToImage": "https://www.tnh1.com.br/fileadmin/_processed_/8/d/csm_geovana-ferreira-queimaduras_7068689433.jpg",
      "publishedAt": "2021-07-25T16:24:27Z",
      "content": null
    },
    {
      "source": {
        "id": null,
        "name": "Livecoins.com.br"
      },
      "author": "https://facebook.com/livecoinsbr",
      "title": "Amazon aceitará Bitcoin, Ethereum e Cardano como pagamento até o fim do ano, diz fonte - Livecoins",
      "description": "A Amazon vai aceitar pagamentos com bitcoin 'até o final do ano', de acordo uma fonte envolvida com o projeto de moedas digitais da empresa.",
      "url": "https://livecoins.com.br/amazon-bitcoin-ethereum-cardano-pagamento/",
      "urlToImage": "https://livecoins.com.br/wp-content/uploads/2021/07/Amazon-loja.jpg",
      "publishedAt": "2021-07-25T14:58:48Z",
      "content": "A Amazon vai aceitar pagamentos com bitcoin ‘até o final do ano’, de acordo uma fonte envolvida com o projeto de moedas digitais da empresa.\r\nA fonte anônima acrescentou que não se trata apenas de um… [+2318 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Tecmundo.com.br"
      },
      "author": "Lupa Charleaux",
      "title": "Desenvolvedor instala MIUI 11, da Xiaomi, em um iPhone com jailbreak - TecMundo",
      "description": "Desenvolvedores conseguiram driblar o difícil sistema da Apple e instalar o software da Xiaomi",
      "url": "https://www.tecmundo.com.br/produto/221733-desenvolvedor-instala-miui-11-xiaomi-iphone-jailbreak.htm",
      "urlToImage": "https://img.ibxk.com.br/2021/07/23/23152410051245.jpg",
      "publishedAt": "2021-07-25T14:00:01Z",
      "content": "Sim, aparentemente é possível ter um iPhone com Android. Recentemente, desenvolvedores usaram as vulnerabilidades de segurança da ferramenta checkm8 para supostamente instalar e rodar o sistema opera… [+1463 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Tudobahia.com.br"
      },
      "author": null,
      "title": "Transferências de dinheiro pelo WhatsApp: saiba como fazer - Tudo Bahia",
      "description": "Com as transferências de dinheiro pelo WhatsApp, não será necessário pagar nenhuma taxa adicional. Confira os detalhes.",
      "url": "https://www.tudobahia.com.br/tecnologia/2021/07/25/transferencias-pelo-whatsapp/",
      "urlToImage": "https://www.tudobahia.com.br/wp-content/uploads/2021/07/transferencias-pelo-whatsapp.jpg",
      "publishedAt": "2021-07-25T13:50:58Z",
      "content": "As transferências pelo WhatsApp já estão disponíveis para todos os usuários do aplicativo de mensagens no Brasil. Lançada em maio, a nova funcionalidade permite transferências instantâneas diretament… [+2730 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Noticiasconcursos.com.br"
      },
      "author": "Saulo Moreira",
      "title": "WhatsApp vai liberar 3 novos recursos; veja quais são - Notícias Concursos",
      "description": "O WhatsApp sempre procura novos recursos para oferecer uma melhor experiência aos seus usuários. Diante disso, o WABetaInfo, site especializado em comentar sobre a plataforma de mensagens, informou que em breve deve ser lançado uma funcionalidade que",
      "url": "https://noticiasconcursos.com.br/whatsapp-vai-liberar-3-novos-recursos-veja-quais-sao/",
      "urlToImage": "https://noticiasconcursos.com.br/wp-content/uploads/2021/05/noticiasconcursos.com.br-enviar-dinheiro-whatsapp-ja-esta-permitido-no-brasil-whatsapp-2.jpg",
      "publishedAt": "2021-07-25T13:48:21Z",
      "content": "O WhatsApp sempre procura novos recursos para oferecer uma melhor experiência aos seus usuários. Diante disso, o WABetaInfo, site especializado em comentar sobre a plataforma de mensagens, informou q… [+2843 chars]"
    },
    {
      "source": {
        "id": null,
        "name": "Tecmundo.com.br"
      },
      "author": "André Luiz Dias Gonçalves",
      "title": "8 apps para fazer vídeos no celular - TecMundo",
      "description": "Adicione efeitos, faça cortes e insira áudio, deixando as produções prontas para postar no YouTube, redes sociais e compartilhar no WhatsApp",
      "url": "https://www.tecmundo.com.br/software/221698-8-apps-fazer-videos-celular.htm",
      "urlToImage": "https://img.ibxk.com.br/2021/07/09/09181423726299.jpg",
      "publishedAt": "2021-07-25T13:00:01Z",
      "content": "Os vídeos de viagens, festas e outros momentos marcantes armazenados no smartphone estão precisando de retoques? É possível realizar grandes mudanças usando apps para fazer vídeos no celular, que tra… [+4982 chars]"
    },
    {
      "source": {
        "id": "google-news",
        "name": "Google News"
      },
      "author": null,
      "title": "Inteligência e sofisticação: linha de TVs OLED da LG chega renovada - Link Estadão",
      "description": null,
      "url": "https://news.google.com/__i/rss/rd/articles/CBMieWh0dHBzOi8vbGluay5lc3RhZGFvLmNvbS5ici9ub3RpY2lhcy9nZXJhbCxpbnRlbGlnZW5jaWEtZS1zb2Zpc3RpY2FjYW8tbGluaGEtZGUtdHZzLW9sZWQtZGEtbGctY2hlZ2EtcmVub3ZhZGEsNzAwMDM3ODU1NTXSAX1odHRwczovL2xpbmsuZXN0YWRhby5jb20uYnIvbm90aWNpYXMvZ2VyYWwsaW50ZWxpZ2VuY2lhLWUtc29maXN0aWNhY2FvLWxpbmhhLWRlLXR2cy1vbGVkLWRhLWxnLWNoZWdhLXJlbm92YWRhLDcwMDAzNzg1NTU1LmFtcA?oc=5",
      "urlToImage": null,
      "publishedAt": "2021-07-25T11:00:59Z",
      "content": null
    },
    {
      "source": {
        "id": null,
        "name": "Techtudo.com.br"
      },
      "author": null,
      "title": "Samsung Galaxy S22 deve estrear carregador super-rápido de 65 Watts - TechTudo",
      "description": "Rival Mi 11 Ultra (Xiaomi) já conta com a tecnologia.",
      "url": "https://www.techtudo.com.br/noticias/2021/07/samsung-galaxy-s22-deve-estrear-carregador-super-rapido-de-65-watts.ghtml",
      "urlToImage": "https://s2.glbimg.com/ysoUO8i3CHyOVoBcWT7LTmNDB84=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2021/V/j/3B0UUxS5ydXgWbivxq1Q/galaxy-s21-1.jpg",
      "publishedAt": "2021-07-25T09:10:35Z",
      "content": "A futura linha Galaxy S22 (Samsung) pode chegar no ano que vem com suporte a carregadores de 65 Watts de potência, equiparando-os a rivais como o Mi 11 Ultra (Xiaomi). Caso a informação publicada pel… [+2243 chars]"
    }
  ]
}
''';
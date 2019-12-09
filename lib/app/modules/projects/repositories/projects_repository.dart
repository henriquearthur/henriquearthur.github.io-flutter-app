import 'package:henriquearthur/app/modules/projects/models/project.dart';

class ProjectsRepository {
  List<Project> getApps() {
    return [
      Project(
        title: 'Congressos UNAMA',
        description:
            'App para acompanhar a programação oficial dos congressos da UNAMA - Universidade da Amazônia.',
        devInfo: 'Aplicativo desenvolvido com Flutter e Firebase.',
        icon: 'assets/images/projects/icons/congressos_unama.png',
        url:
            'https://play.google.com/store/apps/details?id=br.com.henriquearthur.congressos_unama',
      ),
      Project(
        title: 'Simulador TIM Beta',
        description:
            'App para calcular quantas recargas realizar e quantos pacotes comprar durante uma rodada do Beta para virar LAB e ter mais benefícios.',
        devInfo: 'Aplicativo desenvolvido com Flutter.',
        icon: 'assets/images/projects/icons/simulador_timbeta.png',
        url:
            'https://play.google.com/store/apps/details?id=br.com.henriquearthur.simulador_timbeta',
      )
    ];
  }

  List<Project> getWebsites() {
    return [
      Project(
        title: 'Superpagg',
        description:
            'Comparador de preços de supermercados de Belém e Ananindeua.',
        devInfo:
            'PWA (Progressive Web App) desenvolvido com Bootstrap, jQuery e PHP com Laravel.',
        icon: 'assets/images/projects/icons/superpagg.png',
        screenshot: 'assets/images/projects/screenshots/superpagg.png',
        url: 'https://superpagg.com',
      ),
      Project(
        title: 'ProHabbo - Redesign',
        description:
            'Fã-site do jogo Habbo Hotel para integração da comunidade. Contêm portal de notícias, fórum de usuários, área de artes, rankings, rádio, entre outras áreas.',
        devInfo:
            'Site desenvolvido com Bootstrap, jQuery e PHP com Slim Framework.',
        icon: 'assets/images/projects/icons/prohabbo_v4.png',
        screenshot: 'assets/images/projects/screenshots/prohabbo_v4.png',
      ),
      Project(
        title: 'ProHabbo',
        description:
            'Fã-site do jogo Habbo Hotel para integração da comunidade. Contêm portal de notícias, fórum de usuários, área de artes, rankings, rádio, entre outras áreas.',
        devInfo:
            'Site desenvolvido com Semantic UI, jQuery e PHP com Slim Framework.',
        icon: 'assets/images/projects/icons/prohabbo.png',
        screenshot: 'assets/images/projects/screenshots/prohabbo.png',
      ),
      Project(
        title: 'IceHabbo',
        description:
            'Fã-site do jogo Habbo Hotel para integração da comunidade. Contêm portal de notícias, fórum de usuários, área de artes, rankings, rádio, feed de usuários, chat, entre outras áreas.',
        devInfo:
            'Site desenvolvido com Bootstrap, jQuery e PHP com Slim Framework.',
        icon: 'assets/images/projects/icons/icehabbo.png',
        screenshot: 'assets/images/projects/screenshots/icehabbo.png',
      ),
      Project(
        title: 'iDHabbo',
        description:
            'Portal de conteúdo de fã-sites do jogo Habbo Hotel para integração da comunidade. Contêm portal de notícias, fórum de usuários, área de artes, rankings, rádio, entre outras áreas.',
        devInfo: 'Site desenvolvido com Semantic UI, jQuery e PHP.',
        icon: 'assets/images/projects/icons/idhabbo.png',
        screenshot: 'assets/images/projects/screenshots/idhabbo.png',
        url: 'https://idhabbo.com.br',
      ),
      Project(
        title: 'Papo e Mídia',
        description:
            'Portal de conteúdo com notícias, colunas, fotos e vídeos de assuntos da cultura pop.',
        devInfo: 'Site desenvolvido com Bootstrap, jQuery e PHP.',
        icon: 'assets/images/projects/icons/papo_e_midia.png',
        screenshot: 'assets/images/projects/screenshots/papo_e_midia.png',
      ),
      Project(
        title: 'Rádio TheHits',
        description:
            'Webrádio com playlists personalizadas através da API do YouTube e portal de notícias.',
        devInfo: 'Site desenvolvido com Bootstrap, jQuery e PHP.',
        icon: 'assets/images/projects/icons/thehits.png',
        screenshot: 'assets/images/projects/screenshots/thehits.png',
      ),
    ];
  }
}

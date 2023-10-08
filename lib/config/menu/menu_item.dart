import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Riverpod Counter',
      link: '/counter-river',
      subTitle: 'Introducción a riverpod',
      icon: Icons.add),
  MenuItems(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'ProgressIndicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItems(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItems(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Introducción a la aplicación',
      link: '/tutorial',
      subTitle: 'Tutorial introductorio',
      icon: Icons.accessible_rounded),
  MenuItems(
    title: 'InfiniteScroll y Pull',
    link: '/infinite',
    subTitle: 'Listas infinitas y pull to refresh',
    icon: Icons.list_alt_rounded,
  ),
  MenuItems(
    title: 'Cambiar tema',
    link: '/theme-changer',
    subTitle: 'Cambia tema de la aplicación',
    icon: Icons.color_lens_outlined,
  ),
];

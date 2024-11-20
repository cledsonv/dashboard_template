import 'package:neuro_dashboard/features/book/presenter/ui/pages/all_book_page.dart';
import 'package:neuro_dashboard/features/home/presenter/ui/pages/home_page.dart';

enum MenuItemEnum {
  home(route: HomePage.route, title: 'Home'),
  book(route: AllBookPage.route, title: 'Livro');

  final String title;
  final String route;

  const MenuItemEnum({required this.title, required this.route});
}

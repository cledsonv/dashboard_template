import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/utils/menu_item_enum.dart';
import 'package:neuro_dashboard/core/utils/template/module_page_template.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';
import 'package:neuro_dashboard/features/book/presenter/controllers/book_controller.dart';
import 'package:neuro_dashboard/features/book/presenter/ui/pages/created_book_page.dart';
import 'package:page_manager/export_manager.dart';

class AllBookPage extends StatefulWidget {
  static const route = '/all-book';
  const AllBookPage({super.key});

  @override
  State<AllBookPage> createState() => _AllBookPageState();
}

class _AllBookPageState extends ManagerPage<BookController, AllBookPage> {
  @override
  Widget build(BuildContext context) {
    return ModuloPageTemplate(
      state: ct.state,
      error: ct.error,
      title: MenuItemEnum.book.title,
      route: AllBookPage.route,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.push(CreatedBookPage.route);
        },
        child: const Icon(Icons.add),
      ),
      child: Expanded(
        child: ListView.builder(
          itemCount: ct.books.length,
          itemBuilder: (context, index) {
            final book = ct.books[index];
            return GestureDetector(
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   BookPage.route,
                //   arguments: book.id,
                // );
              },
              child: Container(
                height: 200,
                margin: const EdgeInsets.only(bottom: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor,
                ),
                child: Row(
                  children: [
                    Hero(
                      tag: book.id,
                      child: Container(
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: NetworkImage(
                              book.cover!,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NeuroText(
                            text: book.title,
                            typography: NeuroTypography.button,
                          ),
                          const SizedBox(height: 10),
                          NeuroText(
                            text: book.author,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

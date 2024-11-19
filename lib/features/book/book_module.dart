import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/routes/register_module.dart';
import 'package:neuro_dashboard/features/book/domain/mappers/book_mapper.dart';
import 'package:neuro_dashboard/features/book/domain/repositories/book_repository.dart';
import 'package:neuro_dashboard/features/book/domain/repositories/book_repository_imp.dart';
import 'package:neuro_dashboard/features/book/presenter/controllers/book_controller.dart';
import 'package:neuro_dashboard/features/book/presenter/ui/pages/all_book_page.dart';
import 'package:neuro_dashboard/features/book/presenter/ui/pages/created_book_page.dart';

class BookModule implements RegisterModule {
  @override
  void inicialize() {
    //Mapper
    di.registerFactory<BookMapper>(
      () => BookMapper(),
    );
    //Repository
    di.registerFactory<BookRepository>(
      () => BookRepositoryImp(
        di(),
        di(),
      ),
    );

    //Controller
    di.registerFactory<BookController>(
      () => BookController(
        di(),
      ),
    );
  }

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: AllBookPage.route,
          builder: (context, state) => const AllBookPage(),
        ),
        GoRoute(
          path: CreatedBookPage.route,
          builder: (context, state) => const CreatedBookPage(),
        ),
      ];
}

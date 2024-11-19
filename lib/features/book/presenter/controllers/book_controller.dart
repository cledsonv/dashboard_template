import 'package:neuro_dashboard/features/book/domain/entities/book_entity.dart';
import 'package:neuro_dashboard/features/book/domain/repositories/book_repository.dart';
import 'package:page_manager/export_manager.dart';

class BookController extends ManagerStore {
  final BookRepository _bookRepository;

  BookController(this._bookRepository);

  List<BookEntity> books = [];

  @override
  void init(Map<String, dynamic> arguments) => handleTry(
        call: () async {
          books = await _bookRepository.getBooks();
        },
      );
}

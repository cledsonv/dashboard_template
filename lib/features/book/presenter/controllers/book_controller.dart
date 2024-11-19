import 'package:neuro_dashboard/features/book/domain/book_entity.dart';
import 'package:page_manager/export_manager.dart';

class BookController extends ManagerStore {
  List<BookEntity> books = [];

  @override
  void init(Map<String, dynamic> arguments) => handleTry(
        call: () async {},
      );
}

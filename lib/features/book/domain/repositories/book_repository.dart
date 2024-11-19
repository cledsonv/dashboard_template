import 'package:neuro_dashboard/features/book/domain/entities/book_entity.dart';

abstract class BookRepository {
  Future<List<BookEntity>> getBooks();
  // Future<BookEntity> getBook(String id);
  // Future<void> addBook(BookEntity book);
  // Future<void> updateBook(BookEntity book);
  // Future<void> deleteBook(String id);
}

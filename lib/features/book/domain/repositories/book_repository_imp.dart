import 'package:neuro_dashboard/core/services/api/api_neuro.dart';
import 'package:neuro_dashboard/features/book/domain/entities/book_entity.dart';
import 'package:neuro_dashboard/features/book/domain/mappers/book_mapper.dart';
import 'package:neuro_dashboard/features/book/domain/repositories/book_repository.dart';

class BookRepositoryImp extends BookRepository {
  final ApiNeuro _apiNeuro;
  final BookMapper _bookMapper;

  BookRepositoryImp(this._apiNeuro, this._bookMapper);

  @override
  Future<List<BookEntity>> getBooks() async {
    final books = await _apiNeuro.get(path: '/books');

    return (books as List).map((e) => _bookMapper.fromJson(e)).toList();
  }
}

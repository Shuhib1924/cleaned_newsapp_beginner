import 'package:dartz/dartz.dart';
import 'package:clean_newsletter/core/failures_success/failures.dart';
import 'package:clean_newsletter/features/show_news/domain/entities/news_info.dart';

abstract class FetchRepo {
  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText);
}

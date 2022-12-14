import 'package:clean_newsletter/features/show_news/domain/entities/news_info.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failures_success/failures.dart';
import 'package:clean_newsletter/features/show_news/domain/repositories/fetch_repo_contract.dart';

class FetchNewsUsecase {
  final FetchRepo fetchRepo;
  FetchNewsUsecase({required this.fetchRepo});
  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) {
    return fetchRepo.fetchNews(searchText);
  }
}

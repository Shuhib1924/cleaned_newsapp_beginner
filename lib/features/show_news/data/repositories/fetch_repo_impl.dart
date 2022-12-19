import 'package:clean_newsletter/features/show_news/data_sources/fetch_from_remote_ds.dart';
import 'package:clean_newsletter/features/show_news/domain/repositories/fetch_repo_contract.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/failures_success/exceptions.dart';
import '../../../../core/failures_success/failures.dart';
import '../../../../core/services/service_locator.dart';
import '../../domain/entities/news_info.dart';

class FetchRepoImpl implements FetchRepo {
  final FetchFromRemoteDS fetchFromRemoteDS = sl<FetchFromRemoteDS>();
  // const FetchRepoImpl({required this.fetchFromRemoteDS});
  @override
  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) async {
    try {
      return Right(await fetchFromRemoteDS.fetchNews(searchText));
    } on FetchException catch (e) {
      return Left(FetchFailure(message: e.message));
    }
  }
}

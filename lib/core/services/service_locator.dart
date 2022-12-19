import 'package:clean_newsletter/core/services/api_service.dart';
import 'package:clean_newsletter/features/show_news/data/repositories/fetch_repo_impl.dart';
import 'package:clean_newsletter/features/show_news/data_sources/fetch_from_remote_ds.dart';
import 'package:clean_newsletter/features/show_news/domain/repositories/fetch_repo_contract.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setUpService() {
  sl.registerSingleton<ApiService>(ApiServiceImpl());
  sl.registerSingleton<FetchFromRemoteDS>(FetchFromRemoteDSImpl());
  sl.registerSingleton<FetchRepo>(FetchRepoImpl());
}

import 'package:clean_newsletter/core/constants/api_key.dart';
import 'package:clean_newsletter/core/failures_success/exceptions.dart';
import 'package:clean_newsletter/features/show_news/data/models/news_info_model.dart';
import 'package:clean_newsletter/core/services/api_service.dart';

import '../../../core/services/service_locator.dart';

abstract class FetchFromRemoteDS {
  Future<List<NewsInfoModel>> fetchNews(String? searchText);
}

class FetchFromRemoteDSImpl implements FetchFromRemoteDS {
  final ApiService apiService = sl<ApiService>();
  // const FetchFromRemoteDSImpl({required this.apiService});
  @override
  Future<List<NewsInfoModel>> fetchNews(String? searchText) async {
    try {
      Map<String, dynamic> data = await apiService.getData(
        searchText != null ? ApiKey.apiBody : ApiKey.apiHeader,
        {
          'apiKey': ApiKey.apiKey,
          if (searchText == null) 'country': 'us',
          if (searchText != null) 'q': searchText,
        },
      );

      List list = data['articles'];
      List<Map<String, dynamic>> mapList = [];
      for (int i = 0; i < list.length; i++) {
        Map<String, dynamic> map = list[i] as Map<String, dynamic>;
        mapList.add(map);
      }

      List<NewsInfoModel> news = [];
      for (int i = 0; i < mapList.length; i++) {
        NewsInfoModel newsInfoModel = NewsInfoModel.fromMap(mapList[i]);
        news.add(newsInfoModel);
      }
      return news;
    } catch (e) {
      throw const FetchException(message: 'no data available');
    }
  }
}

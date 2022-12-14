import 'package:clean_newsletter/di_example.dart';
import 'package:get_it/get_it.dart';

final GetIt s1 = GetIt.instance;

void setUpService() {
  s1.registerSingleton<ButtonInfo>(const ButtonInfo('info text'));
}

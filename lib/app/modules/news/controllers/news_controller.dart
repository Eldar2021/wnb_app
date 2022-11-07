import 'package:get/get.dart';
import 'package:step_01/app/data/models/news_model.dart';
import 'package:step_01/app/data/repositories/news_repo.dart';

class NewsController extends GetxController {
  final newsRepo = NewsRepo();
  Rx<News?> news = Rxn();

  final RxInt count = 0.obs;

  Future<void> getNews() async {
    news.value = await newsRepo.getNews();
  }

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  void increment() => count.value++;
}

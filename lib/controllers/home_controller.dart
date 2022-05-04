import 'package:app_context/models/time.dart';
import 'package:app_context/repositories/times_repository.dart';

class HomeController {
  late TimesRepository timesRepository;

  List<Time> get tabela => timesRepository.times;

  HomeController() {
    timesRepository = TimesRepository();
  }
}

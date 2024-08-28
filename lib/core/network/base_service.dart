import '../di/injection.dart';
import 'app_client.dart';

abstract class BaseService {
  final client = getIt<AppClient>();
}

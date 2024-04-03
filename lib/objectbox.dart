import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:today_and_tomorrow/domain/add_habit/habit.dart';
import 'package:today_and_tomorrow/infraestructure/core/objectbox_injectable_module.dart';
import 'package:today_and_tomorrow/injection.dart';
import 'objectbox.g.dart'; // created by `flutter pub run build_runner build`

@injectable
class ObjectBox {
  /// The Store of this app.
  late final Store store;
  late final Box<Habit> _habitBox;

  ObjectBox._create(this.store) {
    // Add any additional setup code, e.g. build queries.
    _habitBox = Box<Habit>(store);
    if (_habitBox.isEmpty()) {
      putDemoData();
    }
  }

  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    // Future<Store> openStore() {...} is defined in the generated objectbox.g.dart
    // final store = await openStore(
    //     directory: p.join(docsDir.path, "today-and-tomorrow-obx"));
    final store = await getIt<ObjectBoxInjectableModule>().store;
    return ObjectBox._create(store);
  }

  void putDemoData() {
    Habit demoHabit = Habit("Go to run at 5am");
    _habitBox.put(demoHabit);
  }
}

import 'package:objectbox/objectbox.dart';

import '../../objectbox.g.dart';

@Entity() // Signals ObjectBox to create a Box for this class.
class Habit {
  // Every @Entity requires an int property named 'id'
  // or an int property with any name annotated with @Id().
  @Id()
  int id;
  String name;

  Habit(this.name, {this.id = 0});
}

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

import 'breathwork.dart';
import 'food.dart';
import 'grounding.dart';
import 'journal_entry.dart';
import 'meditation.dart';
import 'sun.dart';
import 'supplement.dart';
import 'tag.dart';
import 'water.dart';
import 'workout.dart';

part 'activity.g.dart';

@collection
@CopyWith()
class Activity {
  Id id = Isar.autoIncrement;
  DateTime date;
  Meditation? meditation;
  Breathwork? breathwork;
  JournalEntry? journalEntry;
  Tag? tag;
  Sun? sun;
  Water? water;
  Grounding? grounding;
  Supplement? supplement;
  Workout? workout;
  Food? food;

  Activity({
    required this.date,
    this.meditation,
    this.breathwork,
    this.journalEntry,
    this.tag,
    this.sun,
    this.water,
    this.grounding,
    this.supplement,
    this.workout,
    this.food,
  });
}

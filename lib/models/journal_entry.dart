import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'journal_entry.g.dart';

@collection
@CopyWith()
class JournalEntry {
  Id id = Isar.autoIncrement;
  int? placeholder;

  JournalEntry({
    this.placeholder,
  });
}

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'journal_entry.g.dart';

@embedded
@CopyWith()
class JournalEntry {
  int? placeholder;

  JournalEntry({
    this.placeholder,
  });
}

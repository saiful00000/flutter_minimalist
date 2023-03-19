/// An extension class on [num] to convert number to
/// seconds, minutes, hour [Duration] and so on
extension DurationMinimalist on num {
  /// This getter converts given [num] to [Duration] in microseconds
  Duration get microSeconds => Duration(microseconds: toInt());

  /// This getter converts given [num] to [Duration] in milliseconds
  Duration get milliSeconds => Duration(milliseconds: toInt());

  /// This getter converts given [num] to [Duration] in seconds
  Duration get seconds => Duration(seconds: toInt());

  /// This getter converts given [num] to [Duration] in minute
  Duration get minutes => Duration(minutes: toInt());

  /// This getter converts given [num] to [Duration] in hours
  Duration get hours => Duration(hours: toInt());

  /// This getter converts given [num] to [Duration] in days
  Duration get days => Duration(days: toInt());
}

extension FutureMinimalist on Duration {
  /// Delay to given [duration]
  Future<void> get wait => Future.delayed(this);

  /// another form of [wait] to use or call more precisely
  Future<void> get delay => wait;
}

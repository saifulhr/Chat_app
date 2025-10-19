String formatTime(DateTime time) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final msgDate = DateTime(time.year, time.month, time.day);

  if (msgDate == today) {
    final hour = time.hour > 12 ? time.hour - 12 : time.hour;
    final period = time.hour >= 12 ? 'PM' : 'AM';
    return "${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')} $period";
  } else if (msgDate == today.subtract(const Duration(days: 1))) {
    return "Yesterday";
  } else {
    return "${time.day}/${time.month}/${time.year}";
  }
}

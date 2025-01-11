
enum Period {
  all,
  currentWeek,
  currentMonth;

  DateTime? get rangeDate {
    switch (this) {
      case Period.all:
        return null;
      case Period.currentWeek:
        return (DateTime.now().subtract(const Duration(days: 7)));
      case Period.currentMonth:
        return (DateTime.now().subtract(const Duration(days: 30)));
    }
  }
}

enum OrderType {
  all(),
  free(),
  appended(),
}

enum ClientType{
  all(),
  subscribers(),
}


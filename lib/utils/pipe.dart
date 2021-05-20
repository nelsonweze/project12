String timeFormatter(DateTime date) {
  var value = DateTime.now().difference(date).inMicroseconds;
  var hr = value / 1000000 / 3600;

  if (hr >= 24) return '${(hr~/24)} д ';
  print(hr);
  return '${hr.toInt()} ч';
}

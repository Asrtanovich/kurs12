// DateTime now = DateTime.now();
// String formattedDate = DateFormat.yMMMEd().format(now);
// print(formattedDate);
// String formattedDate = DateFormat.yMMMEd().format(now);
// print(formattedDate);
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

DateTime now = DateTime.now();
String formattedDate = DateFormat("MM-dd-yyyy HH:mm").format(DateTime.now());
// print(formattedDate);

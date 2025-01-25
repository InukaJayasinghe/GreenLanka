import 'package:flutter/foundation.dart';

class ReportProvider with ChangeNotifier {
  final List<Map<String, dynamic>> _reports = [];

  List<Map<String, dynamic>> get report => [..._reports];

  void addreport(Map<String, dynamic> report) {
    _reports.add(report);
    notifyListeners();
  }

}
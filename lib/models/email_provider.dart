import 'package:flutter/material.dart';
import 'package:outlook/models/email.dart';

class EmailProvider with ChangeNotifier {
  List<Email> _emails = [];

  List<Email> get emails => _emails;

  void updateEmails(BuildContext context) {
    _emails = Email.getEmails(context);
    notifyListeners();
  }

  void refresh(BuildContext context) {
    updateEmails(context);
  }
}

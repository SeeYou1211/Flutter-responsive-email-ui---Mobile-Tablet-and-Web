import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:outlook/generated/l10n/l10n.dart' show AppLocalizations;
import 'package:provider/provider.dart';

class EmailProvider with ChangeNotifier {
  Locale? _currentLocale;

  Locale? get currentLocale => _currentLocale;

  void changeLocale(Locale newLocale) {
    _currentLocale = newLocale;
    notifyListeners();
  }
}

class Email {
  final String image;
  final String name;
  final String subject;
  final String body;
  final String time;
  final bool isAttachmentAvailable;
  final bool isChecked;
  final Color? tagColor;

  Email({
    required this.image,
    required this.name,
    required this.subject,
    required this.body,
    required this.time,
    required this.isAttachmentAvailable,
    required this.isChecked,
    this.tagColor,
  });

  static List<Email> getEmails(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final now = DateTime.now();
    final timeFormat = DateFormat('HH:mm');

    return [
      Email(
        name: localizations.emailNameApple,
        image: "assets/images/user_1.png",
        subject: localizations.emailSubjectIphone12,
        isAttachmentAvailable: false,
        isChecked: true,
        tagColor: null,
        time: "Now",
        body: localizations.emailDemoText,
      ),
      Email(
        name: localizations.emailNameElvia,
        image: "assets/images/user_2.png",
        subject: localizations.emailSubjectHomeInspiration,
        isAttachmentAvailable: true,
        isChecked: false,
        tagColor: null,
        time: timeFormat.format(now.subtract(Duration(hours: 1, minutes: 28))),
        body: localizations.emailDemoText,
      ),
      Email(
        name: localizations.emailNameMarvin,
        image: "assets/images/user_3.png",
        subject: localizations.emailSubjectBusinessFocus,
        isAttachmentAvailable: true,
        isChecked: false,
        tagColor: null,
        time: timeFormat.format(now.subtract(Duration(hours: 2, minutes: 33))),
        body: localizations.emailDemoText,
      ),
      Email(
        name: localizations.emailNameDomenic,
        image: "assets/images/user_4.png",
        subject: localizations.emailSubjectDesign,
        isAttachmentAvailable: false,
        isChecked: true,
        tagColor: const Color(0xFF23CF91),
        time: timeFormat.format(now.subtract(Duration(hours: 4, minutes: 17))),
        body: localizations.emailDemoText,
      ),
      Email(
        name: localizations.emailNameElenor,
        image: "assets/images/user_5.png",
        subject: localizations.emailSubjectJobOpportunities,
        isAttachmentAvailable: false,
        isChecked: false,
        tagColor: const Color(0xFF3A6FF7),
        time: timeFormat.format(now.subtract(Duration(hours: 5, minutes: 2))),
        body: localizations.emailDemoText,
      ),
    ];
  }
}

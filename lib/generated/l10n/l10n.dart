// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Outlook`
  String get appTitle {
    return Intl.message(
      'Outlook',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get errorTitle {
    return Intl.message(
      'Error',
      name: 'errorTitle',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred`
  String get errorMessage {
    return Intl.message(
      'An error occurred',
      name: 'errorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get emailNameApple {
    return Intl.message(
      'Apple',
      name: 'emailNameApple',
      desc: '',
      args: [],
    );
  }

  /// `iPhone 12 is here!`
  String get emailSubjectIphone12 {
    return Intl.message(
      'iPhone 12 is here!',
      name: 'emailSubjectIphone12',
      desc: '',
      args: [],
    );
  }

  /// `This is a demo email text`
  String get emailDemoText {
    return Intl.message(
      'This is a demo email text',
      name: 'emailDemoText',
      desc: '',
      args: [],
    );
  }

  /// `Elvia Atkins`
  String get emailNameElvia {
    return Intl.message(
      'Elvia Atkins',
      name: 'emailNameElvia',
      desc: '',
      args: [],
    );
  }

  /// `Home Inspiration`
  String get emailSubjectHomeInspiration {
    return Intl.message(
      'Home Inspiration',
      name: 'emailSubjectHomeInspiration',
      desc: '',
      args: [],
    );
  }

  /// `Marvin McKinney`
  String get emailNameMarvin {
    return Intl.message(
      'Marvin McKinney',
      name: 'emailNameMarvin',
      desc: '',
      args: [],
    );
  }

  /// `Business Focus`
  String get emailSubjectBusinessFocus {
    return Intl.message(
      'Business Focus',
      name: 'emailSubjectBusinessFocus',
      desc: '',
      args: [],
    );
  }

  /// `Domenic Bosco`
  String get emailNameDomenic {
    return Intl.message(
      'Domenic Bosco',
      name: 'emailNameDomenic',
      desc: '',
      args: [],
    );
  }

  /// `Design`
  String get emailSubjectDesign {
    return Intl.message(
      'Design',
      name: 'emailSubjectDesign',
      desc: '',
      args: [],
    );
  }

  /// `Elenor Pena`
  String get emailNameElenor {
    return Intl.message(
      'Elenor Pena',
      name: 'emailNameElenor',
      desc: '',
      args: [],
    );
  }

  /// `Job Opportunities`
  String get emailSubjectJobOpportunities {
    return Intl.message(
      'Job Opportunities',
      name: 'emailSubjectJobOpportunities',
      desc: '',
      args: [],
    );
  }

  /// `New Message`
  String get newMessage {
    return Intl.message(
      'New Message',
      name: 'newMessage',
      desc: '',
      args: [],
    );
  }

  /// `Get Messages`
  String get getMessages {
    return Intl.message(
      'Get Messages',
      name: 'getMessages',
      desc: '',
      args: [],
    );
  }

  /// `Inbox`
  String get inbox {
    return Intl.message(
      'Inbox',
      name: 'inbox',
      desc: '',
      args: [],
    );
  }

  /// `Sent`
  String get sent {
    return Intl.message(
      'Sent',
      name: 'sent',
      desc: '',
      args: [],
    );
  }

  /// `Drafts`
  String get drafts {
    return Intl.message(
      'Drafts',
      name: 'drafts',
      desc: '',
      args: [],
    );
  }

  /// `Deleted`
  String get deleted {
    return Intl.message(
      'Deleted',
      name: 'deleted',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

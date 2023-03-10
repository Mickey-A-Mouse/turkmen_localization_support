import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'tk_patterns.dart';

class _TkMaterialLocalization
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _TkMaterialLocalization();

  @override
  bool isSupported(Locale locale) => locale.languageCode == "tk";

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<MaterialLocalizations> old) =>
      false;

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: TkPatterns.tkLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(TkPatterns.tkDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      TkMaterialLocalization(
        localeName: localeName,
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MMM d', localeName),
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en_US'),
      ),
    );
  }
}

class TkMaterialLocalization extends GlobalMaterialLocalizations {
  const TkMaterialLocalization({
    super.localeName = 'tk',
    required super.fullYearFormat,
    required super.compactDateFormat,
    required super.shortDateFormat,
    required super.mediumDateFormat,
    required super.longDateFormat,
    required super.yearMonthFormat,
    required super.shortMonthDayFormat,
    required super.decimalFormat,
    required super.twoDigitZeroPaddedFormat,
  });

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _TkMaterialLocalization();

  static const List<String> _weekdays = <String>[
    '??ek??enbe',
    'Du??enbe',
    'Si??enbe',
    '??ar??enbe',
    'Pen??enbe',
    'Anna',
    '??enbe',
  ];

  static const List<String> _narrowWeekdays = <String>[
    '??',
    'D',
    'S',
    '??',
    'P',
    'A',
    '??'
  ];

  static const List<String> _shortWeekdays = <String>[
    '??ek',
    'Du',
    'Si',
    '??a',
    'Pe',
    'An',
    '??e',
  ];

  static const List<String> _shortMonths = <String>[
    '??an',
    'Few',
    'Mar',
    'Apr',
    'Ma??',
    'I??n',
    'I??l',
    'Awg',
    'Sen',
    'Okt',
    'No??',
    'Dek',
  ];

  static const List<String> _months = <String>[
    '??anwar',
    'Fewral',
    'Mart',
    'Aprel',
    'Ma??',
    'I??un',
    'I??ul',
    'Awgust',
    'Sent??abr',
    'Okt??abr',
    'No??abr',
    'Dekabr',
  ];

  @override
  String get aboutListTileTitleRaw => r'$applicationName: hakynda';

  @override
  String get alertDialogLabel => r'Bildiri??';

  @override
  String get anteMeridiemAbbreviation => r'IRDEN';

  @override
  String get backButtonTooltip => r'Yza';

  @override
  String get calendarModeButtonLabel => r'Kalendara ge??mek';

  @override
  String get cancelButtonLabel => r'??ATYRMAK';

  @override
  String get closeButtonLabel => r'??APMAK';

  @override
  String get closeButtonTooltip => r'??apmak';

  @override
  String get collapsedIconTapHint => r'Gi??eltmek';

  @override
  String get continueButtonLabel => r'DOWAM ETMEK';

  @override
  String get copyButtonLabel => r'KOPI??ASYNY ALMAK';

  @override
  String get cutButtonLabel => r'KESIP ALMAK';

  @override
  String get dateHelpText => r'dd.mm.yyyy';

  @override
  String get dateInputLabel => r'Sen??ni girizi??';

  @override
  String get dateOutOfRangeLabel => r'????kden ??ykylan';

  @override
  String get datePickerHelpText => r'Sen??ni sa??la??';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'So??ky sene $fullDate';

  @override
  String get dateRangeEndLabel => r'Gutar??an senesi';

  @override
  String get dateRangePickerHelpText => r'????gini sa??la??';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      'Ba??lan??an senesi \$fullDate';

  @override
  String get dateRangeStartLabel => 'Ba??lan??an senesi';

  @override
  String get dateSeparator => '.';

  @override
  String get deleteButtonTooltip => r'Pozmak';

  @override
  String get dialModeButtonLabel => r'Girizmek usulyny?? sa??lamagyna ge??mek';

  @override
  String get dialogLabel => r'Dialog';

  @override
  String get drawerLabel => r'Men???? nawigasi??asy';

  @override
  String get expandedIconTapHint => r'Ki??eltmek';

  @override
  String get hideAccountsLabel => r'Hasaplary gizlemek';

  @override
  String get inputDateModeButtonLabel => r'Girizmek re??imine ge??mek';

  @override
  String get inputTimeModeButtonLabel => r'Tekst girizmek re??imine ge??mek';

  @override
  String get invalidDateFormatLabel => r'N??dogry format';

  @override
  String get invalidDateRangeLabel => r'N??dogry ????k';

  @override
  String get invalidTimeLabel => r'Dogry wagty girizi??';

  @override
  String licensesPackageDetailText(int licenseCount) {
    assert(licenseCount >= 0);
    switch (licenseCount) {
      case 0:
        return 'Ygty??arnama ????k.';
      case 1:
        return '1 sany ygty??arnama.';
      default:
        return '$licenseCount sany ygty??arnama.';
    }
  }

  @override
  String get licensesPackageDetailTextOther =>
      '\$licenseCount sany ygty??arnama';

  @override
  String get licensesPageTitle => r'Ygty??arnama';

  @override
  String get modalBarrierDismissLabel => r'??apmak';

  @override
  String get moreButtonTooltip => r'K??pr??k';

  @override
  String get nextMonthTooltip => 'Indiki a??';

  @override
  String get nextPageTooltip => r'Indiki sahypa';

  @override
  String get okButtonLabel => r'Bol??ar';

  @override
  String get openAppDrawerTooltip => r'Nawigasi??a men????syny a??y??';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow???$lastRow / takmynan $rowCount';

  @override
  String get pageRowsInfoTitleRaw => r'$firstRow???$lastRow / $rowCount';

  @override
  String get pasteButtonLabel => r'GO??MAK';

  @override
  String get popupMenuLabel => r'??uze ??yk??an men????';

  @override
  String get postMeridiemAbbreviation => r'????l??n';

  @override
  String get previousMonthTooltip => r'????ki a??';

  @override
  String get previousPageTooltip => r'????ki sahypa';

  @override
  String get refreshIndicatorSemanticLabel => r'Tazelenme';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount simwolar galdy';

  @override
  String get remainingTextFieldCharacterCountZero => r'Simwol galmady';

  @override
  String get reorderItemDown => r'A??ak ge??irmek';

  @override
  String get reorderItemLeft => r'??epe ge??irmek';

  @override
  String get reorderItemRight => r'Saga ge??irmek';

  @override
  String get reorderItemToEnd => r'So??yna ge??irmek';

  @override
  String get reorderItemToStart => r'Ba??yna ge??irmek';

  @override
  String get reorderItemUp => r'??okaryk ge??irmek';

  @override
  String get rowsPerPageTitle => r'Sahypada setirler:';

  @override
  String get saveButtonLabel => '??ATDA SAKLAMAK';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'G??zleg';

  @override
  String get selectAllButtonLabel => r'HEMMESINI SA??LAMAK';

  @override
  String get selectYearSemanticsLabel => '??yly sa??la??';

  @override
  String get selectedRowCountTitleOther =>
      r'$selectedRowCount element sa??lanan';

  @override
  String get showAccountsLabel => r'Hasaplary g??rkezmek';

  @override
  String get showMenuTooltip => r'Men????ny g??rkez';

  @override
  String get signedInLabel => r'Giri?? edildi';

  @override
  String get tabLabelRaw => r'$tabIndex / $tabCount go??ma??a go??lan sahypa';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.HH_colon_mm;

  @override
  String get timePickerDialHelpText => 'WAGTY SA??LA??';

  @override
  String get timePickerHourLabel => 'Sagat';

  @override
  String get timePickerHourModeAnnouncement => r'Sagat sa??la??';

  @override
  String get timePickerInputHelpText => 'Wagty girizi??';

  @override
  String get timePickerMinuteLabel => 'Minut';

  @override
  String get timePickerMinuteModeAnnouncement => r'Minut sa??la??';

  @override
  String get unspecifiedDate => 'Sene';

  @override
  String get unspecifiedDateRange => 'Seneleri?? ????gi';

  @override
  String get viewLicensesButtonLabel => r'YGTY??ARNAMALARY G??RMEK';

  @override
  List<String> get narrowWeekdays => _narrowWeekdays;

  @override
  int get firstDayOfWeekIndex => 1;

  @override
  String formatMediumDate(DateTime date) {
    final String day = _shortWeekdays[date.weekday - DateTime.monday];
    final String month = _shortMonths[date.month - DateTime.january];
    return '$day, $month ${date.day}';
  }

  @override
  String formatDecimal(int number) {
    if (number > -1000 && number < 1000) return number.toString();

    final String digits = number.abs().toString();
    final StringBuffer result = StringBuffer(number < 0 ? '-' : '');
    final int maxDigitIndex = digits.length - 1;
    for (int i = 0; i <= maxDigitIndex; i += 1) {
      result.write(digits[i]);
      if (i < maxDigitIndex && (maxDigitIndex - i) % 3 == 0) result.write(',');
    }
    return result.toString();
  }

  @override
  String formatCompactDate(DateTime date) {
    // Assumes US mm/dd/yyyy format
    final String month = _formatTwoDigitZeroPad(date.month);
    final String day = _formatTwoDigitZeroPad(date.day);
    final String year = date.year.toString().padLeft(4, '0');
    return '$day.$month.$year';
  }

  @override
  String formatShortDate(DateTime date) {
    final String month = _shortMonths[date.month - DateTime.january];
    return '$month ${date.day}, ${date.year}';
  }

  String _formatTwoDigitZeroPad(int number) {
    assert(0 <= number && number < 100);

    if (number < 10) return '0$number';

    return '$number';
  }

  @override
  String formatFullDate(DateTime date) {
    final String month = _months[date.month - DateTime.january];
    return '${_weekdays[date.weekday - DateTime.monday]}, $month ${date.day}, ${date.year}';
  }

  @override
  String formatMonthYear(DateTime date) {
    final String year = formatYear(date);
    final String month = _months[date.month - DateTime.january];
    return '$month $year';
  }

  @override
  DateTime? parseCompactDate(String? inputString) {
    if (inputString == null) {
      return null;
    }

    // Assumes US mm/dd/yyyy format
    final List<String> inputParts = inputString.split('.');
    if (inputParts.length != 3) {
      return null;
    }

    final int? year = int.tryParse(inputParts[2], radix: 10);
    if (year == null || year < 1) {
      return null;
    }

    final int? month = int.tryParse(inputParts[0], radix: 10);
    if (month == null || month < 1 || month > 12) {
      return null;
    }

    final int? day = int.tryParse(inputParts[1], radix: 10);
    if (day == null || day < 1 || day > _getDaysInMonth(year, month)) {
      return null;
    }
    return DateTime(year, month, day);
  }

  int _getDaysInMonth(int year, int month) {
    if (month == DateTime.february) {
      final bool isLeapYear =
          (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0);
      if (isLeapYear) return 29;
      return 28;
    }
    const List<int> daysInMonth = <int>[
      31,
      -1,
      31,
      30,
      31,
      30,
      31,
      31,
      30,
      31,
      30,
      31
    ];
    return daysInMonth[month - 1];
  }

  @override
  String formatShortMonthDay(DateTime date) {
    final String month = _shortMonths[date.month - DateTime.january];
    return '$month ${date.day}';
  }

  @override
  TimeOfDayFormat timeOfDayFormat({bool alwaysUse24HourFormat = false}) {
    return TimeOfDayFormat.HH_colon_mm;
  }

  @override
  String formatTimeOfDay(TimeOfDay timeOfDay,
      {bool alwaysUse24HourFormat = false}) {
    final StringBuffer buffer = StringBuffer();
    buffer
      ..write(formatHour(timeOfDay, alwaysUse24HourFormat: true))
      ..write(':')
      ..write(formatMinute(timeOfDay));

    return '$buffer';
  }

  @override
  String get firstPageTooltip => 'Ba?? sahypa';

  @override
  String get lastPageTooltip => 'So??ky sahypa';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Channel Down';

  @override
  String get keyboardKeyChannelUp => 'Channel Up';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Eject';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Command';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => 'Num /';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Power';

  @override
  String get keyboardKeyPowerOff => 'Power Off';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Select';

  @override
  String get keyboardKeySpace => 'Space';

  @override
  String get menuBarMenuLabel => 'Men???? paneli';
}

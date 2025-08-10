// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'كيبل واي فاي المباشر';

  @override
  String get wifiP2pDriver => 'مشغل واي فاي المباشر';

  @override
  String get readyForConnections => 'جاهز للاتصال';

  @override
  String get disabledEnableWifi => 'معطل - قم بتفعيل الواي فاي للمتابعة';

  @override
  String get connectionStatus => 'حالة الاتصال';

  @override
  String get connected => 'متصل';

  @override
  String get disconnected => 'غير متصل';

  @override
  String get scanForDevices => 'البحث عن الأجهزة';

  @override
  String get scanning => 'جاري البحث...';

  @override
  String get stopScan => 'إيقاف البحث';

  @override
  String get deviceInfo => 'معلومات الجهاز';

  @override
  String get resetWifiDirect => 'إعادة تعيين الواي فاي المباشر';

  @override
  String get noDevicesFound => 'لم يتم العثور على أجهزة';

  @override
  String get tapScanForDevices =>
      'اضغط على "البحث عن الأجهزة" للعثور على الأجهزة القريبة';

  @override
  String availableDevices(int count) {
    return 'الأجهزة المتاحة ($count)';
  }

  @override
  String get connect => 'اتصال';

  @override
  String get disconnect => 'قطع الاتصال';

  @override
  String get logs => 'السجلات';

  @override
  String get clearLogs => 'مسح السجلات';

  @override
  String get chat => 'دردشة';

  @override
  String get speedTest => 'اختبار السرعة';

  @override
  String get fileTransfer => 'نقل الملفات';

  @override
  String get settings => 'الإعدادات';

  @override
  String get connectedReadyToChat => 'متصل - جاهز للدردشة';

  @override
  String get notConnectedConnectToPeer =>
      'غير متصل - اتصل بجهاز للبدء بالدردشة';

  @override
  String get host => 'مضيف';

  @override
  String get client => 'عميل';

  @override
  String get noMessagesYet => 'لا توجد رسائل بعد';

  @override
  String get connectToPeerAndStartChatting => 'اتصل بجهاز وابدأ الدردشة!';

  @override
  String get typeAMessage => 'اكتب رسالة...';

  @override
  String get connectToStartChatting => 'اتصل للبدء بالدردشة';

  @override
  String get justNow => 'الآن';

  @override
  String daysAgo(int count) {
    return 'منذ $count يوم';
  }

  @override
  String hoursAgo(int count) {
    return 'منذ $count ساعة';
  }

  @override
  String minutesAgo(int count) {
    return 'منذ $count دقيقة';
  }

  @override
  String get pleaseConnectToPeerFirst => 'يرجى الاتصال بجهاز أولاً';

  @override
  String fileSent(String fileName) {
    return 'تم إرسال الملف: $fileName';
  }

  @override
  String failedToSendFile(String error) {
    return 'فشل في إرسال الملف: $error';
  }

  @override
  String get notConnected => 'غير متصل';

  @override
  String get readyForFileTransfer => 'جاهز لنقل الملفات';

  @override
  String get connectToStartTransferringFiles => 'اتصل للبدء بنقل الملفات';

  @override
  String get sendFile => 'إرسال ملف';

  @override
  String get receiveFiles => 'استقبال الملفات';

  @override
  String get filesWillBeAutomaticallyReceived =>
      'سيتم استقبال الملفات تلقائياً عند إرسالها من الجهاز الآخر';

  @override
  String get noActiveTransfers => 'لا يوجد عمليات نقل نشطة';

  @override
  String get uploadComplete => 'اكتمل الرفع';

  @override
  String get downloadComplete => 'اكتمل التحميل';

  @override
  String get uploading => 'جاري الرفع...';

  @override
  String get downloading => 'جاري التحميل...';

  @override
  String get recentTransfers => 'النقل الأخير';

  @override
  String get noRecentTransfers => 'لا يوجد نقل حديث';

  @override
  String get sent => 'تم الإرسال';

  @override
  String get received => 'تم الاستلام';

  @override
  String get openFile => 'فتح الملف';

  @override
  String get clear => 'مسح';

  @override
  String failedToOpenFile(String error) {
    return 'فشل في فتح الملف: $error';
  }

  @override
  String get systemLogs => 'سجلات النظام';

  @override
  String get noLogsYet => 'لا توجد سجلات بعد';

  @override
  String get customizeYourWifiDirectExperience => 'خصص تجربة الواي فاي المباشر';

  @override
  String get transferSettings => 'إعدادات النقل';

  @override
  String get transferTimeout => 'مهلة النقل';

  @override
  String get timeoutForFileTransfers => 'مهلة نقل الملفات (ثواني)';

  @override
  String get appSettings => 'إعدادات التطبيق';

  @override
  String get language => 'اللغة';

  @override
  String get chooseYourPreferredLanguage => 'اختر لغتك المفضلة';

  @override
  String get followSystem => 'اتبع النظام';

  @override
  String get english => 'الإنجليزية';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get useDarkTheme => 'استخدم الوضع الداكن';

  @override
  String get about => 'حول';

  @override
  String get version => 'الإصدار';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get viewOurPrivacyPolicy => 'عرض سياسة الخصوصية';

  @override
  String get privacyPolicyContent =>
      'يستخدم هذا التطبيق الواي فاي المباشر لإنشاء اتصالات بين الأجهزة. لا يتم إرسال أي بيانات إلى خوادم خارجية. جميع الاتصالات تحدث مباشرة بين الأجهزة.';

  @override
  String get ok => 'موافق';

  @override
  String get speedTestStatus => 'حالة اختبار السرعة';

  @override
  String get readyToTestConnectionSpeed => 'جاهز لاختبار سرعة الاتصال';

  @override
  String get connectToPeerToTestSpeed => 'اتصل بجهاز لاختبار السرعة';

  @override
  String get testing => 'جاري الاختبار...';

  @override
  String get start => 'ابدأ';

  @override
  String get tapToStartSpeedTest => 'اضغط للبدء باختبار السرعة';

  @override
  String get connectToPeerFirst => 'اتصل بجهاز أولاً';

  @override
  String get downloadTest => 'اختبار التحميل';

  @override
  String get uploadTest => 'اختبار الرفع';

  @override
  String get download => 'تحميل';

  @override
  String get upload => 'رفع';

  @override
  String speed(String speed) {
    return 'السرعة: $speed ميجابايت/ثانية';
  }

  @override
  String get complete => 'مكتمل';

  @override
  String get inProgress => 'قيد التنفيذ';

  @override
  String get latestResults => 'آخر النتائج';

  @override
  String get testCompletedAt => 'اكتمل الاختبار في';

  @override
  String get noTestResultsYet => 'لا توجد نتائج اختبار بعد';

  @override
  String get runSpeedTestToSeeResults =>
      'قم بإجراء اختبار سرعة لرؤية النتائج هنا';

  @override
  String get testHistory => 'سجل الاختبارات';

  @override
  String tests(int count) {
    return '$count اختبار';
  }

  @override
  String get noTestHistory => 'لا يوجد سجل اختبارات';

  @override
  String dayAgo(int count) {
    return 'منذ $count يوم';
  }

  @override
  String daysAgoLong(int count) {
    return 'منذ $count أيام';
  }

  @override
  String hourAgo(int count) {
    return 'منذ $count ساعة';
  }

  @override
  String hoursAgoLong(int count) {
    return 'منذ $count ساعات';
  }

  @override
  String minuteAgo(int count) {
    return 'منذ $count دقيقة';
  }

  @override
  String minutesAgoLong(int count) {
    return 'منذ $count دقائق';
  }

  @override
  String get timeoutUnit => 'ث';

  @override
  String get chinese => 'الصينية';

  @override
  String get githubRepositories => 'مستودعات GitHub';

  @override
  String get flutterAppRepository => 'مستودع تطبيق Flutter';

  @override
  String get flutterAppDescription =>
      'تطبيق WDCable Flutter - تطبيق نقل الملفات عبر الواي فاي المباشر';

  @override
  String get windowsAppRepository => 'مستودع تطبيق Windows';

  @override
  String get windowsAppDescription =>
      'تطبيق WDCableWUI - تطبيق Windows المصاحب';

  @override
  String urlCopiedToClipboard(String url) {
    return 'تم نسخ الرابط إلى الحافظة: $url';
  }

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get settingsSubtitle => 'خصص تجربة الواي فاي المباشر';
}

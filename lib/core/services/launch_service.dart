import 'package:url_launcher/url_launcher.dart';

class LaunchService {
  static Future<bool> openUrl(String url) async {
    final uri = Uri.parse(url);
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  static Future<bool> email({
    required String to,
    String subject = '',
    String body = '',
  }) async {
    final uri = Uri(
      scheme: 'mailto',
      path: to,
      queryParameters: {
        if (subject.isNotEmpty) 'subject': subject,
        if (body.isNotEmpty) 'body': body,
      },
    );
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  static Future<bool> whatsapp(String phone, {String text = ''}) async {
    final normalized = phone.replaceAll(RegExp(r's+'), '');
    final uri = Uri.parse('https://wa.me/$normalized?text=${Uri.encodeComponent(text)}');
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}

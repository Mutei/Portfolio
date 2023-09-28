import 'package:url_launcher/url_launcher.dart';

class Email {
  final Uri _url = Uri(
    scheme: 'mailto',
    path: 'mutea200048@gmail.com',
  );
  Future<void> launch() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

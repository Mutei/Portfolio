import 'package:url_launcher/url_launcher.dart';

class Phone {
  final Uri _url = Uri(
    scheme: 'tel',
    path: '+966508225611',
  );
  Future<void> launch() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

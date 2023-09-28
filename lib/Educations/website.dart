import 'package:url_launcher/url_launcher.dart';

class Website {
  final Uri _url = Uri(
    scheme: 'https',
    path: 'www.emu.edu.tr/en',
  );
  Future<void> launch() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

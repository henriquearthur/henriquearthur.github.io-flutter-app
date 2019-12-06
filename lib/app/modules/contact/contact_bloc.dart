import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:http/http.dart' as http;

class ContactBloc extends BlocBase {
  Future<bool> sendMessage(String name, String email, String message) async {
    try {
      var url =
          'https://docs.google.com/forms/d/e/1FAIpQLSc0FMxUpg-wgMf-FoDZ0HePSwg0yD9YTaRIzNoNiP5rpLSnNg/formResponse';
      var response = await http.post(url, body: {
        'entry.414585514': name,
        'entry.1416397509': email,
        'entry.1272364480': message
      });

      if (response.statusCode != 200) {
        return false;
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}

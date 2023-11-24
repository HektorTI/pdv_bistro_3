import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class CustomAppBarController {
  Future<String> fetchDateText() async {
    try {
      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );

      final double latitude = position.latitude;
      final double longitude = position.longitude;

      final url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=d62cac6d7fe423e36b7c0960418f5cc3&units=metric');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final dt = data['dt'];
        final dateTime = DateTime.fromMillisecondsSinceEpoch(dt * 1000);

        // Use DateFormat para formatar a data no formato aqui
        final formattedDate = DateFormat('d/M/yyyy').format(dateTime);

        return formattedDate;
      } else {
        return 'Erro ao carregar data';
      }
    } catch (e) {
      return 'Erro ao obter geolocalização';
    }
  }
}

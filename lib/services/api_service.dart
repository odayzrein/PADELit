import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // ✅ Use HTTP for AwardSpace (more stable in Flutter Web)
  static const String baseUrl =
      "http://padelbooking.atwebpages.com/padel_api";

  // ✅ ADD BOOKING
  static Future<Map<String, dynamic>> addBooking(
      Map<String, dynamic> booking) async {
    final url = Uri.parse("$baseUrl/add_booking.php");

    try {
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(booking),
      );

      // ✅ Decode response
      final data = jsonDecode(response.body);

      return data;
    } catch (e) {
      return {"message": "❌ Error: $e"};
    }
  }

  // ✅ GET ALL BOOKINGS
  static Future<List<dynamic>> getBookings() async {
    final url = Uri.parse("$baseUrl/get_bookings.php");

    try {
      final response = await http.get(url);

      final data = jsonDecode(response.body);

      // ✅ if server sends message instead of list
      if (data is List) {
        return data;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}

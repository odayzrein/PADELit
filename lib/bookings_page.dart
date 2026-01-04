import 'package:flutter/material.dart';
import 'services/api_service.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  List bookings = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchBookings();
  }

  Future<void> fetchBookings() async {
    final data = await ApiService.getBookings();

    setState(() {
      bookings = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Bookings"),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : bookings.isEmpty
          ? const Center(child: Text("No bookings found"))
          : ListView.builder(
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final b = bookings[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text("${b['name']}  -  ${b['phone']}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Date: ${b['booking_date']}"),
                  Text("Time: ${b['time_slot']}"),
                  Text("Type: ${b['booking_type']}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

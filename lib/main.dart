import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padel Court Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

/// ===================== WELCOME PAGE =====================

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0D47A1),
              Color(0xFF26C6DA),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.sports_tennis,
                      size: 64,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Padelit Club',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Book your padel court in seconds\nand join our community of players.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 28),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF0D47A1),
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const PadelBookingPage(),
                            ),
                          );
                        },
                        child: const Text('Book a court'),
                      ),
                    ),
                    const SizedBox(height: 12),

                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: const BorderSide(color: Colors.white),
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LearnMorePage(),
                            ),
                          );
                        },
                        child: const Text('Learn more'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// ===================== LEARN MORE PAGE =====================

class LearnMorePage extends StatelessWidget {
  const LearnMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Our Club'),
        backgroundColor: const Color(0xFF0D47A1),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0D47A1),
              Color(0xFF26C6DA),
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.92),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 18,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.sports_tennis,
                          size: 40,
                          color: Color(0xFF0D47A1),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Your Padel Club',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D47A1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Play • Train • Compete',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'About Us',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Founded in June 2024 in Barelias, Bekaa, PADELit proudly introduced Padel to the Bekaa region as the very first court to bring this exciting sport to the local community. '
                          'What started as an outdoor court quickly became a space where people of all ages come together to play, learn, and connect. '
                          'At PADELit, our goal is to make Padel accessible to everyone — from beginners discovering the game for the first time to friends and families looking for a fun way to stay active and spend time together.'
                          ' Through community events, friendly matches, and a welcoming atmosphere, PADELit continues to grow the love for padel across the Bekaa region., '
                          'professional coaching, and a friendly community for players of all levels. '
                          'Whether you are a complete beginner or an experienced player, you’ll find a place here.',
                      style: TextStyle(fontSize: 15, height: 1.4),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Our Services',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Column(
                      children: [
                        _InfoRow(
                          icon: Icons.calendar_today,
                          title: 'Court booking',
                          subtitle:
                          'Book courts 7 days a week with flexible time slots.',
                        ),
                        SizedBox(height: 10),
                        _InfoRow(
                          icon: Icons.school,
                          title: 'Coaching',
                          subtitle:
                          'Private and group lessons with certified coaches.',
                        ),
                        SizedBox(height: 10),
                        _InfoRow(
                          icon: Icons.emoji_events,
                          title: 'Leagues & socials',
                          subtitle:
                          'Weekly social matches, mini-tournaments and leagues.',
                        ),
                        SizedBox(height: 10),
                        _InfoRow(
                          icon: Icons.shopping_bag,
                          title: 'Pro shop',
                          subtitle:
                          'Rackets, balls and accessories available on site.',
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Contact',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.phone, size: 18, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          '+961 81 836 711',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.email, size: 18, color: Colors.grey),
                        SizedBox(width: 8),
                        Text(
                          'padelit.lb@outlook.com',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, size: 18, color: Colors.grey),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Bekaa,Barelias',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Back to home'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0D47A1),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 22, color: const Color(0xFF0D47A1)),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/// ===================== BOOKING PAGE =====================

enum BookingType { private, publicType }
enum BookingFrequency { oneTime, weekly }

class PadelBookingPage extends StatefulWidget {
  const PadelBookingPage({super.key});

  @override
  State<PadelBookingPage> createState() => _PadelBookingPageState();
}

class _PadelBookingPageState extends State<PadelBookingPage> {
  final _formKey = GlobalKey<FormState>();

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay = DateTime.now();

  final List<String> _selectedTimeSlots = [];
  List<String> _bookedSlots = [];

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  BookingType _bookingType = BookingType.private;
  BookingFrequency _frequency = BookingFrequency.oneTime;

  @override
  void initState() {
    super.initState();
    _loadBookedSlots();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  List<String> get _timeSlots =>
      List.generate(13, (i) => '${_h(i + 9)} - ${_h(i + 10)}');

  String _h(int h) => '${h.toString().padLeft(2, '0')}:00';

  Future<void> _loadBookedSlots() async {
    if (_selectedDay == null) return;
    final data = await ApiService.getBookings();
    final date = _selectedDay!.toIso8601String().split("T")[0];

    setState(() {
      _bookedSlots = data
          .where((b) => b["booking_date"] == date)
          .map<String>((b) => b["time_slot"].toString())
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Court Booking"), centerTitle: true),
      backgroundColor: const Color(0xFFF4F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                _card(
                  "Player Information",
                  Column(
                    children: [
                      _field(_nameController, "Full Name", Icons.person),
                      const SizedBox(height: 12),
                      _field(
                        _phoneController,
                        "Phone Number",
                        Icons.phone,
                        TextInputType.phone,
                      ),
                    ],
                  ),
                ),

                _card(
                  "Booking Options",
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Type", style: TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 6),
                      _chipRow(
                        ["Private", "Public"],
                        _bookingType.index,
                            (i) => setState(() {
                          _bookingType =
                          i == 0 ? BookingType.private : BookingType.publicType;
                        }),
                      ),
                      const SizedBox(height: 12),
                      const Text("Frequency",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      const SizedBox(height: 6),
                      _chipRow(
                        ["One Time", "Weekly"],
                        _frequency.index,
                            (i) => setState(() {
                          _frequency = i == 0
                              ? BookingFrequency.oneTime
                              : BookingFrequency.weekly;
                        }),
                      ),
                    ],
                  ),
                ),

                _card(
                  "Select Date",
                  TableCalendar(
                    firstDay: DateTime.now().subtract(const Duration(days: 365)),
                    lastDay: DateTime.now().add(const Duration(days: 365)),
                    focusedDay: _focusedDay,
                    selectedDayPredicate: (d) => isSameDay(_selectedDay, d),
                    onDaySelected: (d, f) {
                      setState(() {
                        _selectedDay = d;
                        _focusedDay = f;
                        _selectedTimeSlots.clear();
                      });
                      _loadBookedSlots();
                    },
                    headerStyle: const HeaderStyle(
                      titleCentered: true,
                      formatButtonVisible: false,
                    ),
                    calendarStyle: const CalendarStyle(
                      selectedDecoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                      todayDecoration:
                      BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
                    ),
                  ),
                ),

                _card(
                  "Available Time Slots",
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: _timeSlots.map((slot) {
                      final booked = _bookedSlots.contains(slot);
                      final selected = _selectedTimeSlots.contains(slot);

                      return GestureDetector(
                        onTap: booked
                            ? null
                            : () => setState(() {
                          selected
                              ? _selectedTimeSlots.remove(slot)
                              : _selectedTimeSlots.add(slot);
                        }),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 14),
                          decoration: BoxDecoration(
                            color: booked
                                ? Colors.grey.shade300
                                : selected
                                ? Colors.blue
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: selected
                                    ? Colors.blue
                                    : Colors.grey.shade300),
                          ),
                          child: Text(
                            slot,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: booked
                                  ? Colors.grey
                                  : selected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    child: const Text(
                      "Confirm Booking",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    onPressed: _showConfirmationDialog,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// ================= CONFIRM SUMMARY =================

  void _showConfirmationDialog() {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedDay == null || _selectedTimeSlots.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Select date and time slot")),
      );
      return;
    }

    final date =
        "${_selectedDay!.day.toString().padLeft(2, '0')}/"
        "${_selectedDay!.month.toString().padLeft(2, '0')}/"
        "${_selectedDay!.year}";

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Confirm Booking"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${_nameController.text}"),
            Text("Phone: ${_phoneController.text}"),
            Text("Type: ${_bookingType == BookingType.private ? "Private" : "Public"}"),
            Text("Frequency: ${_frequency == BookingFrequency.oneTime ? "One Time" : "Weekly"}"),
            const SizedBox(height: 8),
            Text("Date: $date"),
            const SizedBox(height: 6),
            Text("Time: ${_selectedTimeSlots.join(", ")}"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: _saveBooking,
            child: const Text("Confirm"),
          ),
        ],
      ),
    );
  }

  Future<void> _saveBooking() async {
    Navigator.pop(context);

    final date = _selectedDay!.toIso8601String().split("T")[0];
    final type =
    _bookingType == BookingType.private ? "Private" : "Public";
    final freq =
    _frequency == BookingFrequency.oneTime ? "One Time" : "Weekly";

    for (final slot in _selectedTimeSlots) {
      await ApiService.addBooking({
        "name": _nameController.text.trim(),
        "phone": _phoneController.text.trim(),
        "booking_type": "$type - $freq",
        "booking_date": date,
        "time_slot": slot,
      });
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("✅ Booking confirmed")),
    );

    setState(() {
      _selectedTimeSlots.clear();
      _nameController.clear();
      _phoneController.clear();
      _loadBookedSlots();
    });
  }

  /// ================= UI HELPERS =================

  Widget _card(String title, Widget child) => Container(
    margin: const EdgeInsets.only(bottom: 18),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.06),
          blurRadius: 10,
          offset: const Offset(0, 6),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        child,
      ],
    ),
  );

  Widget _field(
      TextEditingController c,
      String label,
      IconData icon, [
        TextInputType type = TextInputType.text,
      ]) =>
      TextFormField(
        controller: c,
        keyboardType: type,
        validator: (v) => v == null || v.isEmpty ? "Required" : null,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        ),
      );

  Widget _chipRow(
      List<String> labels,
      int selected,
      ValueChanged<int> onTap,
      ) =>
      Wrap(
        spacing: 8,
        children: List.generate(labels.length, (i) {
          final active = i == selected;
          return ChoiceChip(
            label: Text(labels[i]),
            selected: active,
            onSelected: (_) => onTap(i),
            selectedColor: Colors.blue,
            labelStyle: TextStyle(
                color: active ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600),
          );
        }),
      );
}


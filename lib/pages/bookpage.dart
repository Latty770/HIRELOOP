import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  DateTime? _selectedDate;
  TimeOfDay? _startTime;
  TimeOfDay? _endTime;

  @override
  void initState() {
    super.initState();
    // Set default values
    _selectedDate = DateTime.now().add(const Duration(days: 1));
    _startTime = const TimeOfDay(hour: 10, minute: 0);
    _endTime = const TimeOfDay(hour: 18, minute: 0);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStartTime
          ? (_startTime ?? TimeOfDay.now())
          : (_endTime ?? TimeOfDay.now()),
    );
    if (picked != null) {
      setState(() {
        if (isStartTime) {
          _startTime = picked;
        } else {
          _endTime = picked;
        }
      });
    }
  }

  String _formatTimeRange() {
    if (_startTime == null || _endTime == null) return "10.00am - 6.00pm";

    String formatTime(TimeOfDay time) {
      final hour = time.hourOfPeriod == 0 ? 12 : time.hourOfPeriod;
      final minute = time.minute.toString().padLeft(2, '0');
      final period = time.period == DayPeriod.am ? 'am' : 'pm';
      return '$hour.${minute}$period';
    }

    return '${formatTime(_startTime!)} - ${formatTime(_endTime!)}';
  }

  String _formatDate() {
    if (_selectedDate == null) return "25-28th Dec 2024";

    final day = _selectedDate!.day;
    final month = _getMonthName(_selectedDate!.month);
    final year = _selectedDate!.year;

    String daySuffix;
    if (day >= 11 && day <= 13) {
      daySuffix = 'th';
    } else {
      switch (day % 10) {
        case 1:
          daySuffix = 'st';
          break;
        case 2:
          daySuffix = 'nd';
          break;
        case 3:
          daySuffix = 'rd';
          break;
        default:
          daySuffix = 'th';
      }
    }

    return '$day$daySuffix $month $year';
  }

  String _getMonthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Color(0xff284a79),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.only(top: 10.0, left: 10.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 225, 232, 235),
                      Color.fromARGB(255, 197, 227, 244),
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Home Cleaning",
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "by Sarah Williams",
                              style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 80.0),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            "ksh200/hr",
                            style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/girl.jpg",
                              height: 180.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/cleaning1.jpg",
                              height: 180.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(width: 15.0),
                          // Add more images here if needed
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/boy1.jpg",
                              height: 180.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15.0),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "images/cleaning2.jpg",
                              height: 180.0,
                              width: 120.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Enjoy a spotless home or workspace without the stress. Our trusted cleaning professionals deliver high-quality, reliable cleaning services tailored to your needs. From routine home cleaning to deep cleans and office maintenance, we use safe, effective products to ensure a fresh and healthy environment every time.",
                style: TextStyle(
                  color: Color(0xff284a79),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                children: [
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.access_alarm_sharp,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: () => _selectTime(context, true),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff284a79),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        _formatTimeRange(),
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              Row(
                children: [
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Icon(Icons.calendar_month, color: Colors.orange),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff284a79),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        _formatDate(),
                        style: TextStyle(
                          color: Color(0xff284a79),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xff284a79),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  onPressed: () {
                    // Handle booking action here
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Booking confirmed!')),
                    );
                  },
                  child: const Text(
                    "Book Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}

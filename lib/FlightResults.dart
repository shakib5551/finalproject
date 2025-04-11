import 'package:flutter/material.dart';

class FlightResults extends StatelessWidget {
  const FlightResults({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy list of flights
    final List<Map<String, String>> flights = [
      {
        'airline': 'Biman Bangladesh',
        'time': '10:00 AM - 11:15 AM',
        'duration': '1h 15m',
        'price': '\৳4500'
      },
      {
        'airline': 'NovoAir',
        'time': '01:30 PM - 02:45 PM',
        'duration': '1h 15m',
        'price': '\৳4700'
      },
      {
        'airline': 'US-Bangla Airlines',
        'time': '05:00 PM - 06:15 PM',
        'duration': '1h 15m',
        'price': '\৳4900'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flight Results'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: flights.length,
        itemBuilder: (context, index) {
          final flight = flights[index];
          return Card(
            margin: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    flight['airline']!,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(flight['time']!, style: const TextStyle(fontSize: 16)),
                      Text(flight['duration']!, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    flight['price']!,
                    style: const TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Booking not implemented')),
                        );
                      },
                      child: const Text('Book Now'),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

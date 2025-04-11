import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'bookings.dart';
import 'flight.dart';
import 'giftcard.dart';
import 'homepage.dart';
import 'hotel.dart';
import 'inbox.dart';
import 'login.dart';
import 'offers.dart';
import 'profile.dart';
import 'signup.dart';
import 'support.dart';
import 'tour.dart';
import 'visa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GhuraFira App',
      routes: {
        '/': (context) => HomePage(),  // Add this route for the homepage
        '/bookings': (context) => BookingsPage(),
        '/flight': (context) => FlightPage(),
        '/giftcard': (context) => GiftCardPage(),
        '/hotel': (context) => HotelPage(),
        '/inbox': (context) => InboxPage(),
        '/login': (context) => LoginPage(),
        '/offers': (context) => OffersPage(),
        '/profile': (context) => ProfilePage(),
        '/signup': (context) => SignupPage(),
        '/support': (context) => SupportPage(),
        '/tour': (context) => TourPage(),
        '/visa': (context) => VisaPage(),
      },
    );
  }
}
=======
import 'flight_booking_page.dart'; // Import the page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Booking UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const FlightBookingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
>>>>>>> 3dd199c (Initial commit to Flightpages branch)

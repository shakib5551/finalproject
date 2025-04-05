import 'package:flutter/material.dart';
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
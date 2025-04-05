import 'package:flutter/material.dart';
import 'bookings.dart';
import 'flight.dart';
import 'hotel.dart';
import 'inbox.dart';
import 'offers.dart';
import 'profile.dart';
import 'tour.dart';
import 'visa.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomepageContent(),
    BookingsPage(),
    OffersPage(),
    InboxPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            SizedBox(width: 10),
            Text('Hello, Traveler'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.flight),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlightPage()),
            ),
          ),
          IconButton(
            icon: Icon(Icons.hotel),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HotelPage()),
            ),
          ),
          IconButton(
            icon: Icon(Icons.tour),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TourPage()),
            ),
          ),
          IconButton(
            icon: Icon(Icons.card_travel),  // Changed to an available icon
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VisaPage()),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('My Bookings'),
              onTap: () => Navigator.pushNamed(context, '/bookings'),
            ),
            ListTile(
              title: Text('Support'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Rate Us'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Saved'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Log out'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomepageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          // Background image
          Image.asset(
            'assets/images/cover.png',  // Your image path
            width: double.infinity,
            height: 250,  // Adjust as needed
            fit: BoxFit.cover,
          ),
          
          // Positioned header buttons over the image
          Positioned(
            top: 40,  // Adjust top position
            left: 20,  // Adjust left position
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.flight, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.hotel, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.tour, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.card_travel, color: Colors.white),  // Changed to an available icon
                  onPressed: () {},
                ),
              ],
            ),
          ),
          
          // Rest of the content
          Padding(
            padding: const EdgeInsets.only(top: 270),  // Adjust padding to avoid overlap
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  color: Colors.blueGrey,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Card(child: Padding(padding: EdgeInsets.all(8), child: Text("Item 1"))),
                      Card(child: Padding(padding: EdgeInsets.all(8), child: Text("Item 2"))),
                      Card(child: Padding(padding: EdgeInsets.all(8), child: Text("Item 3"))),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Center(
                    child: Text("Scrollable content goes here"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
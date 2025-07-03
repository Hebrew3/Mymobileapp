import 'package:flutter/material.dart';



class BookMyShootApp extends StatelessWidget {
  const BookMyShootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookMyShoot',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BookMyShoot',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 30),
            color: Colors.white,
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF9C27B0), // Vibrant Purple
              Color(0xFF7B1FA2), // Deep Purple
              Color(0xFF4A148C), // Dark Purple
            ],
            stops: [0.0, 0.5, 1.0],
            transform: GradientRotation(0.785), // 45 degrees in radians
          ),
        ),
        child: const Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for booking
        },
        backgroundColor: Colors.amber[700],
        elevation: 8,
        child: const Icon(Icons.add_a_photo, size: 28, color: Colors.white),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple.shade800,
                Colors.deepPurple.shade900,
              ],
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.amber[300],
            unselectedItemColor: Colors.white70,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt),
                label: 'Cameras',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Bookings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Text(
            'Premium Camera Rentals',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 6,
                  color: Colors.black45,
                  offset: Offset(2, 2),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Featured Equipment',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            padding: const EdgeInsets.all(16),
            childAspectRatio: 0.85,
            children: [
              _buildCameraCard(
                context,
                Icons.camera_alt,
                'DSLR',
                'Professional DSLR cameras',
                Colors.purple[200],
              ),
              _buildCameraCard(
                context,
                Icons.camera,
                'Mirrorless',
                'Lightweight systems',
                Colors.deepPurple[200],
              ),
              _buildCameraCard(
                context,
                Icons.videocam,
                'Video',
                'Cinema cameras',
                Colors.indigo[200],
              ),
              _buildCameraCard(
                context,
                Icons.photo_camera_back,
                'Medium Format',
                'Studio quality',
                Colors.blue[200],
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Your Bookings',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          _buildBookingItem('Canon EOS R5', 'June 25, 2025', Icons.photo_camera),
          _buildBookingItem('Sony A7 IV', 'June 20, 2025', Icons.videocam),
          _buildBookingItem('Nikon Z9', 'June 15, 2025', Icons.camera_enhance),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildCameraCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    Color? iconColor,
  ) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.white.withOpacity(0.9),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: InkWell(
        onTap: () {
        },
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: iconColor?.withOpacity(0.2) ?? Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 36, color: iconColor),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.deepPurple[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookingItem(String camera, String date, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.deepPurple),
        ),
        title: Text(
          camera,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.deepPurple,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            color: Colors.deepPurple[700],
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.deepPurple[400],
        ),
        onTap: () {
          // Show booking details
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  const Scroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll page "),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Best Actors and Actresses",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "December 2024",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300, // Altura de las tarjetas
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildActorCard(
                  imageUrl:
                      "https://bookdefotos-madrid.com/wp-content/uploads/2020/01/Fotograf%C3%ADas-para-curriculum-profesional.jpg",
                  name: "Golshifteh",
                  surname: "Farahani",
                ),
                _buildActorCard(
                  imageUrl:
                      "https://i.pinimg.com/236x/bf/34/3e/bf343eb05c32235c7a70ed5c58e3ee8a.jpg",
                  name: "Navid",
                  surname: "Mohammadzadeh",
                ),
                _buildActorCard(
                  imageUrl:
                      "https://i.pinimg.com/236x/01/79/b1/0179b12f539445807a84e15098b529dd.jpg",
                  name: "Taraneh",
                  surname: "Alidoosti",
                ),
              ],
            ),
          ),
        ],
      ),
  // Barra de navegación inferior con 4 elementos
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: "Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _buildActorCard({
    required String imageUrl,
    required String name,
    required String surname,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 150, 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 8,
              offset: const Offset(0, 4), 
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                imageUrl,
                width: 120,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              surname,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

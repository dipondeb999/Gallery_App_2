import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
            'Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_box_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                  Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: MasonryGridView.builder(
          itemCount: 10,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/${index + 1}.jpg'),
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: GNav(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            tabBackgroundColor: Colors.grey[100]!,
            color: Colors.grey,
            tabs: const [
              GButton(
                icon: Icons.photo_library,
                text: 'Photos',
              ),
              GButton(
                icon: Icons.file_copy,
                text: 'Albums',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorites',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

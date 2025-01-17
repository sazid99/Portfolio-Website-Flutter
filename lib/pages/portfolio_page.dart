import 'package:flutter/material.dart';
import 'package:portfolio/cards/project_card.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                          'assets/profile.jpg'), // Add your profile picture here
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Your Name',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Your Profession (e.g., Flutter Developer)',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),

              // About Section
              Text(
                'About Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Write a brief introduction about yourself here. Share your interests, skills, and any relevant details about your professional journey.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),

              // Skills Section
              Text(
                'Skills',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Dart')),
                  Chip(label: Text('Firebase')),
                  Chip(label: Text('UI/UX Design')),
                  Chip(label: Text('JavaScript')),
                ],
              ),
              SizedBox(height: 32),

              // Projects Section
              Text(
                'Projects',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              ProjectCard(
                title: 'Project 1',
                description: 'Brief description of your project.',
              ),
              ProjectCard(
                title: 'Project 2',
                description: 'Brief description of your project.',
              ),
              SizedBox(height: 32),

              // Contact Section
              Text(
                'Contact Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Email: your.email@example.com',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Phone: +123 456 7890',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'LinkedIn: linkedin.com/in/yourprofile',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
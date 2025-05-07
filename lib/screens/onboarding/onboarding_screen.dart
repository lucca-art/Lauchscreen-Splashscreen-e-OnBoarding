import 'package:flutter/material.dart';
import '../../widgets/onboarding_page.dart';
import '../welcome/welcome_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'image': 'assets/images/onboarding1.png',
      'title': 'Bem-vindo!',
      'description': 'Conheça nosso app e tudo que ele pode fazer por você.'
    },
    {
      'image': 'assets/images/onboarding2.png',
      'title': 'Organize sua vida',
      'description': 'Gerencie tarefas, lembretes e muito mais.'
    },
    {
      'image': 'assets/images/onboarding3.png',
      'title': 'Vamos começar?',
      'description': 'Toque no botão abaixo para seguir para a home.'
    },
  ];

  void _goToNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) => setState(() => _currentPage = index),
        itemCount: _pages.length,
        itemBuilder: (_, index) {
          final page = _pages[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: OnboardingPage(
              imagePath: page['image']!,
              title: page['title']!,
              description: page['description']!,
            ),
          );
        },
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: _goToNextPage,
          child: Text(_currentPage == _pages.length - 1 ? 'Concluir' : 'Próximo'),
        ),
      ),
    );
  }
}

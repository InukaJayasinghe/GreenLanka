import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Learn'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Articles'),
              Tab(text: 'Videos'),
              Tab(text: 'Tips'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ArticlesList(),  
            VideosList(),
            TipsList(),
          ],
        ),
      ),
    );
  }
}

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = [
      {
        'title': 'Sri Lankan Leopard: A Threatened Species',
        'description': 'Learn about the endangered Sri Lankan leopard...',
        'image': 'images/sri_lankan_leopard.jpeg',
      },
      {
        'title': 'Deforestation in Sri Lanka',
        'description': 'Understanding the impact of deforestation...',
        'image': 'images/deforestation_of_sri_lanka.jpeg',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.asset(
                  article['image']!, // Use Image.asset() for local images
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 200,
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.broken_image, size: 48),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article['title']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(article['description']!),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        // TODO: Navigate to full article
                      },
                      child: const Text('Read More'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class VideosList extends StatelessWidget {
  const VideosList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Videos coming soon...'),
    );
  }
}

class TipsList extends StatelessWidget {
  const TipsList({super.key});

  @override
  Widget build(BuildContext context) {
    final tips = [
      'Plant native trees in your garden',
      'Reduce plastic usage',
      'Start composting at home',
      'Save water by fixing leaks',
      'Use public transport when possible',
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: tips.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 8),
          child: ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(tips[index]),
          ),
        );
      },
    );
  }
}

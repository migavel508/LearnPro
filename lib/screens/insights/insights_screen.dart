import 'package:flutter/material.dart';

class InsightsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insights'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personalized Insights',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Example Insight Content
            Text(
              'Here you can see insights about the child\'s screen time, learning activities, and emotional well-being.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Placeholder for dynamic insights data
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example insight count
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      title: Text('Insight #${index + 1}'),
                      subtitle: Text('Detailed insight description goes here.'),
                      trailing: Icon(Icons.visibility),
                      onTap: () {
                        // Handle insight click
                        // Navigate to detailed insight screen (if implemented)
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

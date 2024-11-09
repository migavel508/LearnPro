import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:learng/data/providers/child_data_provider.dart';
import 'package:learng/data/providers/settings_provider.dart';
import 'package:learng/screens/activities/activities_screen.dart';
import 'package:learng/screens/insights/insights_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access providers
    final childDataProvider = Provider.of<ChildDataProvider>(context);
    final settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(settingsProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              settingsProvider.toggleDarkMode();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Current Screen Time
            Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Current Screen Time'),
                subtitle: Text('${childDataProvider.screenTime} minutes'),
                trailing: Icon(Icons.access_time),
              ),
            ),

            // Recent Activities
            Card(
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text('Recent Activities'),
                subtitle: Text(childDataProvider.activities.isNotEmpty
                    ? childDataProvider.activities.join(', ')
                    : 'No activities yet'),
                trailing: Icon(Icons.list),
              ),
            ),

            // Navigation Buttons
            SizedBox(height: 16.0),
            Text('Navigate to:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivitiesScreen()),
                    );
                  },
                  child: Text('Activities'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InsightsScreen()),
                    );
                  },
                  child: Text('Insights'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

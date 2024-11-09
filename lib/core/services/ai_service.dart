import 'dart:io';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'emotion_detection.dart';
import 'goal_setting.dart';
import 'screen_time_adjustment.dart';


// ai_service.dart
class AiService {
  final Gemini _gemini = Gemini.instance;

  // Method to process emotion detection from an image
  Future<String> detectEmotionFromImage(File imageFile) async {
    try {
      final imageBytes = await imageFile.readAsBytes();

      // Call Google Gemini API with the image for emotion detection
      final response = await _gemini.textAndImage(
        text: "Detect emotion from this image",
        images: [imageBytes],
      );

      // Extract the emotion result from response
      return response?.content?.parts?.last.text ?? "No emotion detected";
    } catch (e) {
      print('Emotion detection error: $e');
      return 'Error: Unable to detect emotion';
    }
  }

  // Method to set personalized goals based on user behavior (e.g., activity level, mood)
  Future<void> setPersonalizedGoals(String mood, int dailyActivity) async {
    try {
      final goalSetting = GoalSetting();
      await goalSetting.adjustGoalsBasedOnMoodAndActivity(mood, dailyActivity);
    } catch (e) {
      print('Goal setting error: $e');
    }
  }

  // Method to adjust screen time limits based on detected emotion
  Future<void> adjustScreenTimeBasedOnEmotion(String detectedEmotion) async {
    try {
      final screenTimeAdjustment = ScreenTimeAdjustment();
      await screenTimeAdjustment.adjustBasedOnEmotion(detectedEmotion);
    } catch (e) {
      print('Screen time adjustment error: $e');
    }
  }

  // Main AI engine that processes both image and text input from the user
  Future<String> processInput(String message, {File? imageFile}) async {
    try {
      String aiResponse;

      if (imageFile != null) {
        final imageBytes = await imageFile.readAsBytes();
        final response = await _gemini.textAndImage(
          text: message,
          images: [imageBytes],
        );

        aiResponse = response?.content?.parts?.last.text ?? "No response from Astrolearn AI";
      } else {
        final response = await _gemini.text(message);
        aiResponse = response?.output ?? "No response from Astrolearn AI";
      }

      // Custom modifications to the AI response
      aiResponse = aiResponse.replaceAll("Gemini", "Astrolearn AI");

      return aiResponse;
    } catch (e) {
      print('Error processing input: $e');
      return 'Error: Unable to process your request';
    }
  }
}

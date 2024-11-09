import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors (Strong and Distinct)
  static const Color primary = Color(0xFF0056D2); // Deep Blue, Coursera-like
  static const Color primaryLight = Color(0xFF4A8FF7); // Lighter shade of primary
  static const Color primaryDark = Color(0xFF0039A6); // Darker shade for contrast

  // Secondary Colors (Vibrant and Engaging)
  static const Color secondary = Color(0xFFEF5350); // Red, Udemy-inspired
  static const Color secondaryLight = Color(0xFFFF867C); // Light red for hover effects
  static const Color secondaryDark = Color(0xFFB61827); // Dark red for strong highlights

  // Accent Colors (Used for highlighting actions)
  static const Color accent = Color(0xFF00BFA5); // Teal, adds a modern touch
  static const Color accentLight = Color(0xFF5DF2D6); // Light teal, for subtle highlights
  static const Color accentDark = Color(0xFF00796B); // Dark teal, for depth

  // Background Colors
  static const Color background = Color(0xFFF7F8FA); // Light grey background for simplicity
  static const Color surface = Color(0xFFFFFFFF); // Pure white for cards and containers

  // Text Colors
  static const Color textPrimary = Color(0xFF212121); // Dark grey for primary text
  static const Color textSecondary = Color(0xFF757575); // Medium grey for secondary text
  static const Color textLight = Color(0xFFFFFFFF); // White for text on colored backgrounds

  // Button Colors
  static const Color buttonPrimary = primary; // Matches the primary color for brand consistency
  static const Color buttonSecondary = secondary; // Matches the secondary color for highlights

  // Error and Success Colors
  static const Color error = Color(0xFFD32F2F); // Standard error color
  static const Color success = Color(0xFF388E3C); // Green for successful actions

  // Divider and Border Colors
  static const Color divider = Color(0xFFBDBDBD); // Light grey for dividers and borders
  static const Color border = Color(0xFFE0E0E0); // Slightly lighter for borders around elements

  // Overlay Colors (e.g., for active/hover states)
  static const Color overlay = Color(0x334A8FF7); // Light overlay of primary color
}

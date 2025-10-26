
import 'package:flutter/cupertino.dart';

class AppColors {
  // // Primary Colors
  // static const Color primaryDark = Color(0xFF1E293B);
  // static const Color secondarySlate = Color(0xFF334155);
  // static const Color accentIndigo = Color(0xFF6366F1);
  // static const Color backgroundDark = Color(0xFF0F172A);
  //
  // // Text Colors
  // static const Color textPrimary = Color(0xFFF1F5F9);
  // static const Color textSecondary = Color(0xFF94A3B8);
  // static const Color textMuted = Color(0xFF64748B);

  // Light Mode Colors
  static const darkBlue = Color(0xFF1E40AF);
  static const blue = Color(0xFF6366F1);
  static const lightBlue = Color(0xFFE2E8F0);

  static const mainWhite = Color(0xFFFFFFFF);
  static const lightBackground = Color(0xFFF8FAFC);
  static const white1 = Color(0xFFF1F5F9);

  static const darkGray = Color(0xFF64748B);
  static const primaryTextColor = Color(0xFF0F172A);
  static const secondaryTextColor = Color(0xFF475569);

  // Shared Colors
  static const success = Color(0xFF10B981);
  static const warning = Color(0xFFF59E0B);
  static const error = Color(0xFFEF4444);
  static const info = Color(0xFF3B82F6);

  // Gradients
  static const accentGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
  );

  static const darkHeroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1E293B), Color(0xFF334155), Color(0xFF475569)],
  );

  static const lightHeroGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFEFF6FF), Color(0xFFDBEAFE), Color(0xFFBFDBFE)],
  );
}

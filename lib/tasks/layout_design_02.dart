import 'package:flutter/material.dart';

class LayoutDesign02 extends StatelessWidget {
  const LayoutDesign02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Design 02',
      home: Scaffold(
        backgroundColor: const Color(0xFF071A1F),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Secondary Numbers",
                  style: TextStyle(
                    color: Color(0xFFAAB6C8),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 18),

                contactCard(
                  number: "+8801782427035",
                  subtitle: "Home Added 2mo ago",
                ),

                const SizedBox(height: 18),

                contactCard(
                  number: "+8801568915246",
                  subtitle: "Work Unverified",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget contactCard({required String number, required String subtitle}) {
    return Container(
      height: 140,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF102126),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white24, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.08),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          // Left circle phone icon
          Container(
            height: 78,
            width: 78,
            decoration: const BoxDecoration(
              color: Color(0xFF1B2B30),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.phone, color: Color(0xFFAAB6C8), size: 32),
          ),

          const SizedBox(width: 14),

          // Middle text section
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF95A4B8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          // Right icons
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.edit, color: Color(0xFFAAB6C8), size: 22),
              SizedBox(height: 14),
              Icon(Icons.delete, color: Color(0xFFAAB6C8), size: 22),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LayoutDesign01 extends StatelessWidget {
  const LayoutDesign01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Info UI',
      home: Scaffold(
        backgroundColor: const Color(0xFFECE7EC),
        appBar: AppBar(
          backgroundColor: const Color(0xFF69E2A5),
          elevation: 0,
          centerTitle: true,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          title: const Text(
            "5th April 2026",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 28,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      color: const Color(0xFFFF5A5F),
                      child: const Center(
                        child: Text(
                          "22CSE009",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      color: const Color(0xFF4CAF50),
                      child: const Center(
                        child: Text(
                          "B+",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      color: const Color(0xFF2196F3),
                      child: const Center(
                        child: Text(
                          "Barishal",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: const Alignment(-0.15, -0.10),
                      child: Container(
                        height: 110,
                        width: 520,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFC107),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "110-009-22",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.82, 0.85),
                      child: Container(
                        height: 115,
                        width: 115,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE040FB),
                              Color(0xFF9C27B0),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Sourav",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 25),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Sourav Debnath",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
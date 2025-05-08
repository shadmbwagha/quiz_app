import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget{
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((data) {
              return Padding(
                padding: const EdgeInsets.all(0.8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question index in a circle
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: (data['user_answer'] == data['correct_answer'])
                          ? const Color.fromARGB(255, 58, 160, 255) // Color for correct answers
                          : const Color.fromARGB(255, 175, 27, 228),  // Default color (wrong)
                      child: Text(
                        (((data['question_index'] as int) + 1).toString()),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    // Question & answers
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 179, 18, 207),
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 58, 160, 255),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    )
                  ],
                ),

              )
                ;
            }).toList(),
          ],
        ),
      ),
    );
  }


}
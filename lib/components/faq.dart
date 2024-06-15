import 'package:flutter/material.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  _FAQSectionState createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  @override
  Widget build(BuildContext context) {
    final faqs = [
      {
        'question': 'Product Details',
        'answer': 'Information about the product'
      },
      {
        'question': 'Specification',
        'answer': 'Detailed specifications of the product.'
      },
      {
        'question': 'Ratings & Reviews',
        'answer': 'Customer ratings and reviews.'
      },
      {
        'question': 'How this was made',
        'answer': 'Description of the manufacturing process.'
      },
      {
        'question': 'Manufacturing Information',
        'answer': 'Details about the manufacturing of the product.'
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          for (var i = 0; i < faqs.length; i++) ...[
            FAQItem(
              question: faqs[i]['question']!,
              answer: faqs[i]['answer']!,
            ),
            const Divider(
              height: 1,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 234, 234, 234),
            ),
          ],
        ],
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  const FAQItem({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

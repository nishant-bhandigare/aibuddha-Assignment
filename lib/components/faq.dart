import 'package:flutter/material.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  _FAQSectionState createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  final List<ExpansionPanelItem> _expansionPanelItems = [
    ExpansionPanelItem(
      headerText: 'Product Details',
      bodyText: 'Information about the product.',
    ),
    ExpansionPanelItem(
      headerText: 'Specification',
      bodyText: 'Detailed specifications of the product.',
    ),
    ExpansionPanelItem(
      headerText: 'Ratings & Reviews',
      bodyText: 'Customer ratings and reviews.',
    ),
    ExpansionPanelItem(
      headerText: 'How this was made',
      bodyText: 'Description of the manufacturing process.',
    ),
    ExpansionPanelItem(
      headerText: 'Manufacturing Information',
      bodyText: 'Details about the manufacturing of the product.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: const EdgeInsets.all(12),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _expansionPanelItems[index].isExpanded = !isExpanded;
        });
      },
      children: _expansionPanelItems.map<ExpansionPanel>((item) {
        return ExpansionPanel(
          backgroundColor: Colors.white,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                item.headerText,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            );
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(item.bodyText),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class ExpansionPanelItem {
  String headerText;
  String bodyText;
  bool isExpanded;

  ExpansionPanelItem({
    required this.headerText,
    required this.bodyText,
    this.isExpanded = false,
  });
}

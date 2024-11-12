import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.productDetails,
  });

  final String productDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Details:',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ExpandText(
          productDetails,
          textAlign: TextAlign.justify,
          style: const TextStyle(fontSize: 16),
          maxLines: 3,
          overflow: TextOverflow.fade,
          expandIndicatorStyle: ExpandIndicatorStyle.text,
          indicatorExpandedHint: 'Show less',
          indicatorCollapsedHint: 'Show more',
          capitalizeIndicatorHintText: false,
          indicatorHintTextStyle: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              'Sit cillum aliquip adipisicing.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        _ImageBubble(),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif',
        width: size.width * 0.7,
        height: 150.0,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150.0,
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: const Text('Se está enviando una imagen...'),
          );
        },
      ),
    );
  }
}

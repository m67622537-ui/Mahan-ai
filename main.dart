import 'package:flutter/material.dart';

void main() {
  runApp(const MahanAI());
}

class MahanAI extends StatelessWidget {
  const MahanAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ماهان AI',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MahanHomePage(),
    );
  }
}

class MahanHomePage extends StatelessWidget {
  const MahanHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ماهان AI',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.smart_toy_outlined,
                      size: 80,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'سلام! من ماهان AI هستم 👋',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'دستیار هوشمند تو',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.image_outlined),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'پیامت را بنویس...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic_none),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

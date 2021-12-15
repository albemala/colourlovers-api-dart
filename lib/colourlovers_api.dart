library colourlovers_api;

import 'package:colourlovers_api/client.dart';

Future<void> main() async {
  final client = ClClient();
  await client.getRandomColor();
  print("----");
  await client.getNewColors(
    numResults: 3,
  );
}

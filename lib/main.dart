import 'package:flutter/material.dart';
import 'package:flutter_payment_gatway_str/home_screen.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      'pk_test_51P7AcrK7CAbmirkaU0JdmctXMp0TP4EjiIwlct3me9Q03E07yM006YePfNmPE84aT8zNthyIn2O43UsOpglsdpz300nGk7rv3t';

  // Apply the settings here
  await Stripe.instance.applySettings();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

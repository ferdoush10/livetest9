import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  int _selectedButtonIndex = -1; // Index of the selected button

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  Widget _buildButton(String label, int index) {
    bool isSelected = index == _selectedButtonIndex;
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedButtonIndex = index;
          for (int i = 0; i < 6; i++) {
            if (i != index) {
              _buttons[i] = _defaultColor;
            }
          }
          _buttons[index] = isSelected ? _defaultColor : _selectedColor;
          _showSnackbar('Selected Size: $label'); // Show Snackbar
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: _buttons[index],
        foregroundColor: Colors.white,
      ),
      child: Text(label),
    );
  }

  final List<Color> _buttons = List.filled(6, _defaultColor);
  static const Color _defaultColor = Colors.grey;
  static const Color _selectedColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButton('S', 0),
                _buildButton('M', 1),
                _buildButton('L', 2),
                _buildButton('XL', 3),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: _buildButton('XL', 4),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: _buildButton('XXL', 5),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

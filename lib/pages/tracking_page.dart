import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopping_app/shared.dart';
import 'package:shopping_app/widgets/my_app_bar_widget.dart';
import 'package:shopping_app/widgets/rating_bar_widget.dart';
import 'package:timelines/timelines.dart';

class ShippingTracker extends StatefulWidget {
  const ShippingTracker({super.key});

  @override
  State<ShippingTracker> createState() => _ShippingTrackerState();
}

class _ShippingTrackerState extends State<ShippingTracker> {
  int _currentIndex = 0;
  Timer? _timer;

  final List<String> _stages = [
    'In the storage',
    'Received by the shipping company',
    'On the way',
    'On the door',
  ];

  final List<IconData> _icons = [
    Icons.inventory_2, // In the storage
    Icons.local_shipping, // Received by the shipping company
    Icons.airport_shuttle, // On the way
    Icons.home, // On the door
  ];

  @override
  void initState() {
    super.initState();
    _startTracking();
  }

  void _startTracking() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_currentIndex < _stages.length - 1) {
        setState(() {
          _currentIndex++;
        });
      } else if (user1.didPurchase) {
        _timer?.cancel();
        _showRatingDialog();
        user1.didPurchase = false;
        setState(() {});
      }
    });
  }

  void _showRatingDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Rate Your Experience'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('How was your experience with the shipment?'),
              SizedBox(height: 20),
              RatingBarWidget(),
            ],
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xff5355ca),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                      "Rate",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarWidget(),
      body: user1.didPurchase
          ? Center(
              child: Timeline.tileBuilder(
                builder: TimelineTileBuilder.connected(
                  itemCount: _stages.length,
                  indicatorBuilder: (_, index) {
                    return _buildIconIndicator(index);
                  },
                  connectorBuilder: (_, index, __) => SolidLineConnector(
                    color: index < _currentIndex
                        ? const Color(0xff5355ca)
                        : Colors.grey,
                  ),
                  contentsBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(_stages[index]),
                  ),
                  contentsAlign: ContentsAlign.alternating,
                ),
              ),
            )
          : Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                ),
                SizedBox(
                    height: 250,
                    width: 300,
                    child: Image.asset("assets/general/empty order.png")),
                const Text(
                  "No orders made",
                  style: TextStyle(fontSize: 24),
                ),
                const Text(
                  "Here is where you can track you orders",
                ),
              ],
            )),
    );
  }

  Widget _buildIconIndicator(int index) {
    return Icon(
      _icons[index],
      color: index <= _currentIndex ? const Color(0xff5355ca) : Colors.grey,
    );
  }
}

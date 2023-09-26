import 'package:flutter/material.dart';

class CustomAppCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String? timeTitle;
  final String? imagePath;
  final Color? color;
  final double? height;
  final String? dayTitle;
  const CustomAppCard({super.key, required this.title, required this.subtitle, this.timeTitle, this.imagePath, this.color, this.height, this.dayTitle});

  @override
  State<CustomAppCard> createState() => _CustomAppCardState();
}

class _CustomAppCardState extends State<CustomAppCard> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: widget.height ?? 220,
          decoration: BoxDecoration(color: widget.color ?? Colors.transparent, borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: widget.color ?? const Color.fromARGB(255, 237, 237, 237), borderRadius: BorderRadius.circular(20.0)),
                        height: 30,
                        width: 60,
                        child: Center(
                          child: Text(
                            widget.dayTitle ?? "",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(widget.subtitle),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: Color.fromARGB(170, 34, 36, 114),
                          ),
                          Text(
                            widget.timeTitle ?? "",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                widget.imagePath ?? "",
                width: 150,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),  
      ),
    );
  }
}

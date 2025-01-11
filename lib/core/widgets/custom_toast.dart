import 'package:flutter/material.dart';

void showCustomToast(BuildContext context, String message,
    {bool isError = false}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.1,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
        child: IntrinsicHeight(
          child: Container(
            width: MediaQuery.of(context).size.width - 300,
            decoration: BoxDecoration(
              color: isError
                  ? const Color(0xfff0e0e0)
                  : Colors.green.shade100.withOpacity(0.7),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                    child: Text(
                      message,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isError ? Colors.red : Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 4,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      bottomLeft: Radius.circular(4),
                    ),
                    color: isError ? Colors.red : Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // Insert the overlay entry into the overlay
    overlay.insert(overlayEntry);

    // Remove the overlay entry after a delay
    Future.delayed(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  });
}

import 'package:flutter/material.dart';
import 'package:barikafoods/constants/colors.dart';
import 'package:barikafoods/data/dummy_data.dart';

class ItemDetailPage extends StatelessWidget {
  final Item? item;
  const ItemDetailPage({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayItem = item ?? dummyItems[0];

    return Scaffold(
      backgroundColor: kBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            backgroundColor: kPrimaryColor,
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(displayItem.image, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(displayItem.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(icon: const Icon(Icons.favorite_outline), color: kPrimaryColor, onPressed: () {}),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(displayItem.category, style: const TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'UGX ${_formatPrice(displayItem.price)}',
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: kPrimaryColor),
                  ),
                  const SizedBox(height: 20),
                  const Text('Description', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(displayItem.description, style: TextStyle(color: Colors.grey[600], height: 1.6, fontSize: 14)),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.chat_bubble_outline),
                          label: const Text('Contact Seller'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: kPrimaryColor,
                            side: const BorderSide(color: kPrimaryColor),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Added to cart!'), backgroundColor: kPrimaryColor),
                            );
                          },
                          icon: const Icon(Icons.shopping_cart_outlined),
                          label: const Text('Add to Cart'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatPrice(int price) {
    return price.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},');
  }
}

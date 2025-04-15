import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartItems = Provider.of<CartProvider>(context).cartItems;


    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        backgroundColor: Colors.amber,
         ),
      body: cartItems.isEmpty
          ? Center(
              child: Text(
                'Your cart is empty!',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: cartItems.length,
              separatorBuilder: (_, __) => SizedBox(height: 10),
              itemBuilder: (_, index) {
                final product = cartItems[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        product.imageUrl,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 60,
                          height: 60,
                          color: Colors.grey[300],
                          child: Icon(Icons.broken_image, color: Colors.grey),
                        ),
                      ),
                    ),
                    title: Text(
                      product.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () {
                        Provider.of<CartProvider>(context, listen: false)
                            .removeFromCart(product);
                      },
                    ),
                  ),
                );
              },
            ),
      backgroundColor: const Color(0xFFFFF8E1),
    );
  }
}



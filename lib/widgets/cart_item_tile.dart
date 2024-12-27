import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/grocery_item.dart';
import '../providers/cart_provider.dart';

class CartItemTile extends StatelessWidget {
  final GroceryItem item;

  const CartItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Image.asset(
          item.image,
          fit: BoxFit.cover,
          width: 50,
        ),
        title: Text(
          item.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('\LKR ${item.price.toStringAsFixed(2)}'),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle, color: Colors.red),
          onPressed: () {
            cartProvider.removeItem(item);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${item.name} removed from cart'),
              ),
            );
          },
        ),
      ),
    );
  }
}

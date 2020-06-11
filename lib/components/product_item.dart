import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AppRoutes.PRODUCT_DETAIL, arguments: product);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: GridTile(
          child: CachedNetworkImage(
            imageUrl: product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

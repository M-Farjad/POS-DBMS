import 'package:flutter/material.dart';

import 'constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 14,
          child: Column(
            children: [
              _topMenu(
                title: 'Younstr\'s Restaurant',
                subTitle: '20 October 2022',
                action: _search(),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _itemTab(
                      icon: 'icons/icon-burger.png',
                      title: 'Burger',
                      isActive: true,
                    ),
                    _itemTab(
                      icon: 'icons/icon-noodles.png',
                      title: 'Noodles',
                      isActive: false,
                    ),
                    _itemTab(
                      icon: 'icons/icon-drinks.png',
                      title: 'Drinks',
                      isActive: false,
                    ),
                    _itemTab(
                      icon: 'icons/icon-desserts.png',
                      title: 'Desserts',
                      isActive: false,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: (1 / 1.2),
                children: [
                  _item(
                    image: 'items/1.png',
                    title: 'Original Burger',
                    price: '\$5.99',
                    item: '11 item',
                  ),
                  _item(
                    image: 'items/2.png',
                    title: 'Double Burger',
                    price: '\$10.99',
                    item: '10 item',
                  ),
                  _item(
                    image: 'items/3.png',
                    title: 'Cheese Burger',
                    price: '\$6.99',
                    item: '7 item',
                  ),
                  _item(
                    image: 'items/4.png',
                    title: 'Double Cheese Burger',
                    price: '\$12.99',
                    item: '20 item',
                  ),
                  _item(
                    image: 'items/5.png',
                    title: 'Spicy Burger',
                    price: '\$7.39',
                    item: '12 item',
                  ),
                  _item(
                    image: 'items/6.png',
                    title: 'Special Black Burger',
                    price: '\$7.39',
                    item: '39 item',
                  ),
                  _item(
                    image: 'items/7.png',
                    title: 'Special Cheese Burger',
                    price: '\$8.00',
                    item: '2 item',
                  ),
                  _item(
                    image: 'items/8.png',
                    title: 'Jumbo Cheese Burger',
                    price: '\$15.99',
                    item: '2 item',
                  ),
                  _item(
                    image: 'items/9.png',
                    title: 'Spicy Burger',
                    price: '\$7.39',
                    item: '12 item',
                  ),
                  _item(
                    image: 'items/10.png',
                    title: 'Special Black Burger',
                    price: '\$7.39',
                    item: '39 item',
                  ),
                  _item(
                    image: 'items/11.png',
                    title: 'Special Cheese Burger',
                    price: '\$8.00',
                    item: '2 item',
                  ),
                  _item(
                    image: 'items/12.png',
                    title: 'Jumbo Cheese Burger',
                    price: '\$15.99',
                    item: '2 item',
                  ),
                ],
              )),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              _topMenu(
                title: 'Order',
                subTitle: 'Table 8',
                action: Container(),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    _itemOrder(
                      image: 'items/1.png',
                      title: 'Orginal Burger',
                      qty: '2',
                      price: '\$5.99',
                    ),
                    _itemOrder(
                      image: 'items/2.png',
                      title: 'Double Burger',
                      qty: '3',
                      price: '\$10.99',
                    ),
                    _itemOrder(
                      image: 'items/6.png',
                      title: 'Special Black Burger',
                      qty: '2',
                      price: '\$8.00',
                    ),
                    _itemOrder(
                      image: 'items/7.png',
                      title: 'Special Cheese Burger',
                      qty: '2',
                      price: '\$12.99',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xff1f2029),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$40.32',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'TAX',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$4.32',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        height: 2,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '\$44.64',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              onPrimary: Colors.white,
                              primary: Colors.deepOrange,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.print, size: 16),
                              SizedBox(width: 6),
                              Text('Print Bills'),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _itemOrder({
    required String image,
    required String title,
    required String qty,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Color(0xff1f2029),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTitleTextStyle,
                ),
                const SizedBox(height: 10),
                Text(price, style: kPriceTextStyle)
              ],
            ),
          ),
          Text(
            '$qty x',
            style: kQtyTextStyle,
          )
        ],
      ),
    );
  }

  Widget _item({
    required String image,
    required String title,
    required String price,
    required String item,
  }) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xff1f2029),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: kTitleTextStyle,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Text(
                item,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemTab(
      {required String icon, required String title, required bool isActive}) {
    return Container(
      width: 180,
      margin: EdgeInsets.only(right: 22),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff1f2029),
        border: isActive
            ? Border.all(color: Colors.deepOrangeAccent, width: 3)
            : Border.all(color: Color(0xff1f2029), width: 3),
      ),
      child: Row(
        children: [
          Image.asset(icon, width: 38),
          const SizedBox(width: 8),
          Text(
            title,
            style: kTitleTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _topMenu({
    required String title,
    required String subTitle,
    required Widget action,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              subTitle,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        Expanded(flex: 1, child: Container(width: double.infinity)),
        Expanded(flex: 5, child: action),
      ],
    );
  }

  Widget _search() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xff1f2029),
      ),
      child: Row(
        children: const [
          Icon(Icons.search, color: Colors.white54),
          SizedBox(width: 20),
          Text(
            'Search menu here ... ',
            style: TextStyle(color: Colors.white54, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

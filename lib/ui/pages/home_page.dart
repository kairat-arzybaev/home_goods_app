import 'package:flutter/material.dart';
import 'package:home_goods_app/components/app_colors.dart';
import 'package:home_goods_app/ui/widgets/address_list_tile.dart';
import 'package:home_goods_app/ui/widgets/best_sellers_widget.dart';
import 'package:home_goods_app/ui/widgets/header_widget.dart';
import 'package:home_goods_app/ui/widgets/promo_widget.dart';
import 'package:home_goods_app/ui/widgets/stories_widget.dart';
import 'package:home_goods_app/ui/widgets/user_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'assets/images/Vector.png',
                width: 415,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(children: [
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            size: 35,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_outlined,
                              size: 35, color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 40),
                  const StoriesWidget(),
                  const SizedBox(height: 55),
                  const UserCardWidget(),
                ]),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const HeaderWidget(
                    title: 'Новости и Акции',
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 165,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: const [
                          PromoWidget(imagePath: 'assets/images/1_rect.png'),
                          PromoWidget(imagePath: 'assets/images/1_rect.png'),
                        ]),
                  ),
                  const SizedBox(height: 20),
                  const HeaderWidget(
                    title: 'Хиты продаж',
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 270,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: const [
                          BestSellersWidget(
                            imagePath: 'assets/images/square_1.png',
                            price: 1200,
                            title: 'Держатель для лейки BOOU PG605',
                            stockCount: 32,
                          ),
                          BestSellersWidget(
                            imagePath: 'assets/images/square_2.png',
                            price: 1900,
                            title: 'Держатель для лейки BOOU PG605',
                            stockCount: 45,
                          ),
                          BestSellersWidget(
                            imagePath: 'assets/images/square_2.png',
                            price: 1500,
                            title: 'Держатель для лейки BOOU PG605',
                            stockCount: 9,
                          )
                        ]),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            backgroundColor: AppColors.blueButton),
                        child: const Text(
                          'Перейти в Каталог',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                  const SizedBox(height: 10),
                  const HeaderWidget(title: 'Адреса магазинов'),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        AddressListTile(
                            shopName: 'Название магазина',
                            address: 'ул. Турусбекова A167',
                            workTime: '08:00 - 22:00'),
                        AddressListTile(
                            shopName: 'Название магазина',
                            address: 'ул. Турусбекова A167',
                            workTime: '08:00 - 22:00'),
                        AddressListTile(
                            shopName: 'Название магазина',
                            address: 'ул. Турусбекова A167',
                            workTime: '08:00 - 22:00')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(color: AppColors.blue),
          unselectedLabelStyle: const TextStyle(color: AppColors.blue),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppColors.blue),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined, color: AppColors.blue),
              label: 'Каталог',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined, color: AppColors.blue),
              label: 'Адреса',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, color: AppColors.blue),
              label: 'Профиль',
            )
          ]),
    );
  }
}

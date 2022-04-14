import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtask/string_conset.dart';

import 'app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool registered = true;
  List<String> itemBuyImages = [];
  List<ListItem> categoryImages = [
    FirestItemInCategory(title: "الكل"),
    CategoryItem(image: "assets/images/hamburger.png", title: "hamburger"),
    CategoryItem(image: "assets/images/coffee.png", title: "coffee"),
    CategoryItem(image: "assets/images/pizza.png", title: "pizza"),
  ];

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 5; i++) {
      itemBuyImages.add("assets/images/$i.png");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: OrientationBuilder(
        builder: ((context, orientation) {
          if (orientation == Orientation.landscape) {
            return SingleChildScrollView(
                child: body(orientation: orientation, size: size));
          } else {
            return body(orientation: orientation, size: size);
          }
        }),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          iconSize: 15,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          // Fixed
           selectedItemColor:  Color(0xFF3A5A98),
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  "assets/images/house.png",
                ),
                color: Color(0xFF3A5A98),
              ),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/wallet2.png"),
                color: Color(0xFF3A5A98),
              ),
              label: 'المحفظة',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/document.png"),
                color: Color(0xFF3A5A98),
              ),
              label: 'المبيعات',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/cart.png"),
                color: Color(0xFF3A5A98),
              ),
              label: 'طلبات مسبقة',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/three-dots.png"),
                color: Color(0xFF3A5A98),
              ),
              label: 'المزيد',
            ),  ],
        ),
      ),
    ));
  }

  Widget body({orientation, size}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("assets/images/Notification.png"),
              const Spacer(),
              Image.asset("assets/images/logo.png"),
              const Spacer(),
            ],
          ),
        ),
        const Divider(
          height: 1,
          color: AppColors.lineColor,
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(right: 4, left: 4, top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    registered = !registered;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 4, left: 4),
                  child: Image.asset("assets/images/notregistered.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4, left: 4),
                child: Image.asset("assets/images/search.png"),
              ),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4, left: 4),
                    child: Container(
                        padding: const EdgeInsets.only(right: 8, left: 8),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const TextField(
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                              hintText: AllStringConst.name,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              icon: Icon(
                                Icons.search,
                                size: 40,
                              )),
                        )),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
            visible: registered,
            child: Container(
              decoration: const BoxDecoration(
                  color: AppColors.headContainerColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              height: 250,
              width: size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/xcircle.png"),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 4.0, left: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 4.0, right: 4),
                                      child: Text("رقم 135",
                                          style: TextStyle(
                                              color: AppColors.white)),
                                    ),
                                    Image.asset("assets/images/shop.png"),
                                  ],
                                ),
                              ),
                              Text("محمد بن عبد الله الفلاج",
                                  style: TextStyle(color: AppColors.white)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 4.0, left: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 4.0, right: 4),
                                      child: Text("الحد اليومي 15.00 ريال",
                                          style: TextStyle(
                                              color: AppColors.white)),
                                    ),
                                    Spacer(),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 4.0, right: 4),
                                      child: Text("الرصيد 10,000 ريال",
                                          style: TextStyle(
                                              color: AppColors.white)),
                                    ),
                                    Image.asset("assets/images/atm.png"),
                                  ],
                                ),
                              ),
                            ],
                          )),
                          Image.asset("assets/images/kid.png"),
                        ]),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      child: Column(children: [
                        Expanded(
                          flex: 2,
                          child: ListView.builder(
                              itemCount: itemBuyImages.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, pos) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 100,
                                    height: 100,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 15,
                                          left: 15,
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColors
                                                          .backgroundColor)),
                                              child: Image.asset(
                                                "assets/images/${pos + 1}.png",
                                                fit: BoxFit.fill,
                                                height: 75,
                                                width: 75,
                                              )),
                                        ),
                                        Positioned(
                                          left: 25,
                                          child: Container(
                                              child: Center(
                                                  child: Text(
                                                "${pos + 1}",
                                                style: TextStyle(
                                                    color: AppColors.white),
                                              )),
                                              height: 30,
                                              width: 30,
                                              decoration: const BoxDecoration(
                                                  color:
                                                      AppColors.backgroundColor,
                                                  shape: BoxShape.circle)),
                                        ),
                                        Positioned(
                                          left: 0,
                                          child: Container(
                                              child: const Icon(Icons.delete,
                                                  color: AppColors.white),
                                              height: 30,
                                              width: 30,
                                              decoration: const BoxDecoration(
                                                  color:
                                                      AppColors.backGroundIcon,
                                                  shape: BoxShape.circle)),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 70,
                                      padding: EdgeInsets.all(8),
                                      child: Center(
                                          child: Text(
                                        "شراء",
                                        style:
                                            TextStyle(color: AppColors.white),
                                      )),
                                      decoration: BoxDecoration(
                                        color: AppColors.backgroundColor,
                                        borderRadius: BorderRadius.circular(15),
                                      )),
                                  Text("الاجمالى   5 ريال"),
                                ]),
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            )),
        orientation == Orientation.portrait
            ? Expanded(
                child: Container(
                  child: botomBody(),
                  color: AppColors.backGround,
                ),
              )
            : Container(
                height: size.height * .7,
                color: AppColors.backGround,
                child: botomBody(),
              ),
      ],
    );
  }

  Widget botomBody() {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: SizedBox(
            height: 80,
            child: ListView.builder(
                itemCount: categoryImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, pos) {
                  if (pos == 0) {
                    FirestItemInCategory f =
                        categoryImages[pos] as FirestItemInCategory;

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 20,
                          width: 50,
                          child: Center(
                              child: Text(
                            f.title,
                            style: TextStyle(color: AppColors.white),
                          )),
                          decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius: BorderRadius.circular(8),
                          )),
                    );
                  } else {
                    CategoryItem c = categoryImages[pos] as CategoryItem;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(c.image),
                            ),
                            Text(c.title)
                          ],
                        ),
                      ),
                    );
                  }
                }),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(100, (index) {
                return Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/CalLabel.png"),
                          Image.asset("assets/images/Information.png"),
                        ],
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/cheddar.png"),
                        ),
                      ),
                      Text("عصير تفاح 250مل"),
                      Text(":الكمية بالمخزون 50"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("7.50  ريال"),
                          Image.asset("assets/images/plus.png"),
                        ],
                      )
                    ]),
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}

class CategoryItem extends ListItem {
  final String image;
  final String title;

  CategoryItem({required this.image, required this.title});
}

class FirestItemInCategory extends ListItem {
  final String title;

  FirestItemInCategory({required this.title});
}

abstract class ListItem {}
